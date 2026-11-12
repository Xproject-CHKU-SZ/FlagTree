'use strict';
const $ = id => document.getElementById(id);
const icons = {
  library: 'M3 4v16 M7 4v16 M11 5v15 M15 4l5 15',
  search: 'M20 20l-5-5 M17 10a7 7 0 1 1-14 0 7 7 0 0 1 14 0',
  plus: 'M12 5v14 M5 12h14',
  minus: 'M5 12h14',
  drive: 'M3 6h18v12H3z M6 14h1 M10 14h1',
  file: 'M6 3h8l4 4v14H6z M14 3v5h4 M9 13h6 M9 16h5',
  text: 'M3 5h18 M8 5v15 M3 20h10 M15 10h6 M18 10v10',
  external: 'M13 4h7v7 M20 4l-10 10 M10 5H4v15h15v-6',
  pointer: 'M4 3l6 17 3-7 7-3z',
  left: 'M15 5l-7 7 7 7',
  right: 'M9 5l7 7-7 7',
  spark: 'M12 3l2.3 6.7L21 12l-6.7 2.3L12 21l-2.3-6.7L3 12l6.7-2.3z',
  layers: 'M3 8l9-5 9 5-9 5z M3 12l9 5 9-5 M3 16l9 5 9-5',
  chat: 'M4 4h16v12H9l-5 4z',
  globe: 'M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0 M3 12h18 M12 3c5 5 5 13 0 18-5-5-5-13 0-18',
  up: 'M12 19V5 M5 12l7-7 7 7',
  close: 'M5 5l14 14 M19 5L5 19',
  upload: 'M12 16V3 M6 9l6-6 6 6 M4 16v5h16v-5',
  flow: 'M4 5h6v5H4z M14 15h6v5h-6z M7 10v7h7',
  code: 'M8 6l-6 6 6 6 M16 6l6 6-6 6 M14 3l-4 18',
  check: 'M3 12l5 5L21 4',
  book: 'M3 4c4-1 7 0 9 2 2-2 5-3 9-2v14c-4-1-7 0-9 2-2-2-5-3-9-2z M12 6v14',
  flag: 'M5 21V3 M5 4c5-4 9 4 15 0v9c-6 4-10-4-15 0',
  link: 'M9 14l6-6 M7 9L5 11a4 4 0 0 0 6 6l2-2 M17 13l2-2a4 4 0 0 0-6-6l-2 2'
};
const ns = 'http://www.w3.org/2000/svg';

function svgNode(tag, attrs = {}) {
  const e = document.createElementNS(ns, tag);
  for (const [k, v] of Object.entries(attrs)) e.setAttribute(k, v);
  return e
}

function icon(name) {
  const s = svgNode('svg', {
    class: 'ico',
    viewBox: '0 0 24 24',
    'aria-hidden': 'true'
  });
  s.append(svgNode('path', {
    d: icons[name] || icons.file
  }));
  return s
}
for (const e of document.querySelectorAll('[data-icon]')) e.append(icon(e.dataset.icon));

function el(tag, cls = '', text = '') {
  const e = document.createElement(tag);
  if (cls) e.className = cls;
  if (text) e.textContent = text;
  return e
}

function btn(text, cls, fn) {
  const b = el('button', cls, text);
  b.type = 'button';
  b.onclick = fn;
  return b
}

function pressed(e, on) {
  e.setAttribute('aria-pressed', String(!!on))
}

function safeUrl(v) {
  try {
    const u = new URL(v);
    return ['https:', 'http:'].includes(u.protocol) ? u.href : ''
  } catch {
    return ''
  }
}

function link(label, url) {
  const a = el('a', '', label);
  a.href = safeUrl(url);
  a.target = '_blank';
  a.rel = 'noopener noreferrer';
  return a
}
async function api(path, body = null) {
  const opts = body === null ? {} : {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'X-Paperdesk': '1'
    },
    body: JSON.stringify(body)
  };
  const r = await fetch(path, opts);
  const data = await r.json();
  if (!r.ok) throw Error(data.error || '无法完成请求');
  return data
}
const state = {
  books: [],
  id: null,
  doc: null,
  page: 1,
  pageData: null,
  mode: localStorage.getItem('paperdesk-mode') || 'original',
  zoom: 1,
  tab: 'guide',
  mine: false,
  selection: null,
  draft: null,
  loadPage: 0,
  paperSeq: 0,
  busy: false
};
const paperAPI = (tail = '', id = state.id) => '/api/papers/' + id + tail;
let toastTimer, poll = null;

function say(text) {
  $('toast').textContent = text;
  $('toast').hidden = false;
  clearTimeout(toastTimer);
  toastTimer = setTimeout(() => $('toast').hidden = true, 4000)
}

function drawer(which) {
  $('library-pane').classList.toggle('show', which === 'books');
  $('assistant-pane').classList.toggle('show', which === 'assistant');
  $('scrim').hidden = !which
}
$('show-books').onclick = () => drawer('books');
$('show-assist').onclick = () => drawer('assistant');
$('close-assist').onclick = $('scrim').onclick = () => drawer('');

function renderBooks() {
  const area = $('books');
  const q = $('filter').value.toLowerCase().trim();
  area.replaceChildren();
  $('count').textContent = state.books.length;
  $('count').title = state.books.some(p=>p.course) ? '含总论、论文、项目与共用附录' : '书库条目';
  const matches = state.books.filter(p => (!state.mine || (!p.course && !p.slug)) && [p.short, p.title, p.venue, p.year,p.course?.stage,p.course?.kind]
    .join(' ').toLowerCase().includes(q));
  let lastGroup = null;
  const colors = ['#7b947d', '#a98967', '#7f91a0', '#938990', '#a09f73'];
  for (const p of matches) {
    const c=p.course;
    const group=c ? c.stage || c.kind : '我的导入';
    if(group!==lastGroup){area.append(el('h3','book-group',group));lastGroup=group}
    const b = btn('', 'book' + (p.id === state.id ? ' active' : ''), () => choose(p.id));
    b.title = p.title;
    b.setAttribute('aria-current', p.id === state.id ? 'page' : 'false');
    const spine = el('span', 'spine');
    spine.style.setProperty('--cover', colors[p.id.charCodeAt(0) % colors.length]);
    const info = el('span', 'book-text');
    const num=c?.order>=1 && c.order<=41 ? String(c.order).padStart(2,'0')+'　' : '';
    info.append(el('strong','',num+p.short),el('small','',[c?.kind,p.venue,p.year].filter(Boolean).join(' · ')||'我的导入'));
    b.append(spine, info);
    area.append(b)
  }
  if (!matches.length) area.append(el('p', 'empty', q ? '没有匹配的论文。' : state.mine ? '还没有导入的论文。' :
    '点击「添加论文」开始阅读。'));
  pressed($('filter-all'), !state.mine);
  pressed($('filter-mine'), state.mine)
}
$('filter').oninput = renderBooks;
$('filter-all').onclick = () => {
  state.mine = false;
  renderBooks()
};
$('filter-mine').onclick = () => {
  state.mine = true;
  renderBooks()
};
async function library() {
  const data = await api('/api/library');
  state.books = data.papers;
  const c = $('connection');
  c.replaceChildren(el('i'), document.createTextNode(data.connected ? 'ChatGPT 已登录' : 'ChatGPT 待登录'));
  c.classList.toggle('good', data.connected);
  c.title = data.connected ? '通过本机 Codex 登录调用 ChatGPT' : '请在终端运行 codex login';
  renderBooks()
}

function activeJob(doc) {
  return [doc.analysis, ...doc.messages].some(j => j && ['queued', 'working'].includes(j.state))
}

function watch() {
  clearTimeout(poll);
  if (!state.doc || !activeJob(state.doc)) return;
  const id = state.id;
  poll = setTimeout(async () => {
    try {
      const d = await api(paperAPI('', id));
      if (id !== state.id) return;
      const old = state.doc;
      state.doc = d;
      if (d.analysis?.state === 'done' && old.analysis?.state !== 'done' && d.guide?.ocr_pages
        ?.includes(state.page)) go(state.page, false);
      if (d.title !== old.title) {
        const paper = state.books.find(x => x.id === id);
        if (paper) {
          paper.title = d.title;
          paper.short = d.short;
          renderBooks()
        }
        head()
      }
      if (JSON.stringify(old.analysis) !== JSON.stringify(d.analysis) || JSON.stringify(old
          .messages) !== JSON.stringify(d.messages)) insights();
    } catch (e) {
      if (id === state.id) say(e.message)
    }
    if (id === state.id) watch()
  }, 1900)
}

function head() {
  const p = state.doc;
  if (!p) return;
  $('current-title').textContent = p.short;
  $('current-title').title = p.title;
  $('subtitle').textContent = [p.venue, p.year, p.title === p.short ? '' : p.title].filter(Boolean).join('  ·  ');
  $('subtitle').hidden=!$('subtitle').textContent;
  $('subtitle').title = p.title;
  $('pdf-link').href = paperAPI('/pdf');
  $('page-count').textContent = '/ ' + p.count
}
async function choose(id, location = {}) {
  const seq = ++state.paperSeq;
  clearTimeout(poll);
  state.loadPage++;
  state.id = id;
  state.doc = null;
  state.pageData = null;
  state.draft = null;
  state.selection = null;
  state.busy = false;
  $('book-frame').hidden=true;
  $('ask-selection').hidden = true;
  $('question').value = '';
  $('paper').replaceChildren();
  $('insights').replaceChildren(el('p', 'status-note', '正在打开论文…'));
  drawer('');
  renderBooks();
  chip();
  try {
    const doc = await api(paperAPI('', id));
    if (seq !== state.paperSeq) return;
    state.doc = doc;
    localStorage.setItem('paperdesk-active', id);
    state.tab = 'guide';
    head();
    insights();
    watch();
    if(doc.course && !location.page) openChapter(location.anchor);
    else {state.mode=localStorage.getItem('paperdesk-mode')==='text'?'text':'original';courseControls();await go(location.page||doc.current_page||1,false)}
  } catch (e) {
    if (seq === state.paperSeq) say(e.message)
  }
}
async function go(n, save = true) {
  if (!state.doc) return;
  if(!state.doc.count)return;
  if(state.mode==='book')state.mode='original';
  courseControls();
  const id = state.id,
    token = ++state.loadPage;
  n = Math.max(1, Math.min(state.doc.count, Math.floor(Number(n) || 1)));
  state.page = n;state.doc.current_page=n;
  history.replaceState(null,'','/#pdf/'+state.id+'/'+n);
  state.pageData = null;
  state.selection = null;
  $('ask-selection').hidden = true;
  $('pageno').value = n;
  $('prev').disabled = n <= 1;
  $('next').disabled = n >= state.doc.count;
  $('canvas').scrollTop = 0;
  $('paper').style.aspectRatio = '';
  $('paper').replaceChildren(el('p', 'paper-status', '正在读取第 ' + n + ' 页…'));
  if (save) api(paperAPI('/position', id), {
    page: n
  }).catch(e => say(e.message));
  try {
    const d = await api(paperAPI('/pages/' + n, id));
    if (token !== state.loadPage || state.id !== id) return;
    state.pageData = d;
    drawPage()
  } catch (e) {
    if (token === state.loadPage) {
      $('paper').replaceChildren(el('p', 'error empty', e.message), btn('重新加载', 'small-action', () =>
        go(n, false)))
    }
  }
}

function drawPage() {
  const d = state.pageData;
  if (!d || state.mode==='book') return;
  const hint = $('page-state');
  hint.replaceChildren(icon('pointer'));
  if (state.mode === 'original' && !d.lines.length && d.ocr) {
    hint.append(btn('已识别 · 切换文本划词', 'flat', () => mode('text')))
  } else hint.append(document.createTextNode('选中原文即可提问'));
  const p = $('paper');
  p.replaceChildren();
  p.style.width = (state.zoom * 100) + '%';
  p.style.maxWidth = 'none';
  p.style.aspectRatio = state.mode === 'original' ? d.width + '/' + d.height : 'auto';
  $('fit').textContent = Math.round(state.zoom * 100) + '%';
  pressed($('mode-original'), state.mode === 'original');
  pressed($('mode-text'), state.mode === 'text');
  $('minus').disabled = state.zoom <= 0.7;
  $('plus').disabled = state.zoom >= 1.8;
  if (state.mode === 'text') {
    if (d.ocr) p.append(el('p', 'status-note', '本页由页图转录，请对照原版核对符号。'));
    const text = el('div', 'plainpage', d.text || '这一页没有可提取的文本，可以切换到原版查看图表。');
    text.style.fontSize = (17 * state.zoom) + 'px';
    p.style.width = '100%';
    p.append(text);
    return
  }
  const img = el('img', 'pageimg');
  img.alt = '原论文第 ' + state.page + ' 页';
  img.draggable = false;
  img.src = paperAPI('/pages/' + state.page + '/image');
  img.onerror = () => {
    if (img.isConnected) say('原版页面未能加载，请切换文本或重试。')
  };
  const layer = el('div', 'textlayer');
  layer.setAttribute('aria-label', '可选中的论文原文');
  p.append(img, layer);
  const ctx = document.createElement('canvas').getContext('2d');
  for (const [x, y, x2, y2, t] of d.lines) {
    const span = el('span', '', t + ' ');
    span.style.left = (100 * x / d.width) + '%';
    span.style.top = (100 * y / d.height) + '%';
    span.dataset.ht = (y2 - y) / d.width;
    span.dataset.ratio = (x2 - x) / Math.max(.1, y2 - y);
    ctx.font = '100px "Times New Roman", serif';
    span.style.transform = 'scaleX(' + (span.dataset.ratio * 100 / Math.max(1, ctx.measureText(t)
      .width)) + ')';
    layer.append(span)
  }
  scaleLayer()
}

function scaleLayer() {
  const w = $('paper').getBoundingClientRect().width;
  for (const s of $('paper').querySelectorAll('.textlayer span')) s.style.fontSize = (w * s.dataset.ht) +
    'px'
}
new ResizeObserver(scaleLayer).observe($('paper'));

function mode(m) {
  if(!state.doc?.count)return;
  const fromBook=state.mode==='book';
  state.mode = m;
  courseControls();
  localStorage.setItem('paperdesk-mode', m);
  if(fromBook || !state.pageData)go(state.doc.current_page||1,false);else drawPage()
}
$('mode-original').onclick = () => mode('original');
$('mode-text').onclick = () => mode('text');
$('prev').onclick = () => go(state.page - 1);
$('next').onclick = () => go(state.page + 1);
$('pageno').onkeydown = e => {
  if (e.key === 'Enter') {
    $('pageno').blur()
  }
};
$('pageno').onchange = () => go($('pageno').value);

function zoom(z) {
  state.zoom = Math.max(.7, Math.min(1.8, Math.round(z * 10) / 10));
  drawPage()
}
$('plus').onclick = () => zoom(state.zoom + .1);
$('minus').onclick = () => zoom(state.zoom - .1);
$('fit').onclick = () => zoom(1);

function selected() {
  const s = window.getSelection();
  if (!s || !s.rangeCount || s.isCollapsed) return;
  const r = s.getRangeAt(0),
    p = $('paper');
  if (!p.contains(r.startContainer) || !p.contains(r.endContainer)) return;
  const q = s.toString().trim();
  if (!q) return;
  if (q.length > 8000) {
    say('请选取不超过 8000 字的段落。');
    return
  }
  const rect = r.getBoundingClientRect();
  state.selection = {
    quote: q,
    page: state.page
  };
  const b = $('ask-selection');
  b.hidden = false;
  b.style.left = Math.min(innerWidth - 105, Math.max(8, rect.left)) + 'px';
  b.style.top = Math.min(innerHeight - 40, Math.max(8, rect.top - 37)) + 'px'
}
$('paper').addEventListener('pointerup', () => setTimeout(selected, 0));
$('paper').addEventListener('keyup', selected);
document.addEventListener('selectionchange', () => {
  const s = getSelection();
  if (!s.rangeCount || s.isCollapsed) $('ask-selection').hidden = true
});
$('canvas').addEventListener('scroll', () => {
  $('ask-selection').hidden = true
});
$('ask-selection').onpointerdown = e => e.preventDefault();
$('ask-selection').onclick = () => {
  if (!state.selection) return;
  state.draft = state.selection;
  state.selection = null;
  $('ask-selection').hidden = true;
  getSelection().removeAllRanges();
  if(state.draft.origin==='book')$('book-frame').contentWindow?.getSelection()?.removeAllRanges();
  tab('ask');
  chip();
  if (innerWidth <= 719) drawer('assistant');
  $('question').focus()
};

function chip() {
  const c = $('quote-chip');
  c.hidden = !state.draft;
  c.replaceChildren();
  if (state.draft) {
    const label = el('span', '', (state.draft.origin==='book'?'拆解 · '+(state.draft.section||'正文'):'P. '+state.draft.page)+'　'+state.draft.quote);
    label.title = state.draft.quote;
    const clear = btn('×', '', () => {
      state.draft = null;
      chip()
    });
    clear.setAttribute('aria-label', '移除选文');
    c.append(label, clear)
  }
}

function tab(t) {
  state.tab = t;
  insights();
  $('insights').scrollTop = 0
}
$('tab-guide').onclick = () => tab('guide');
$('tab-ask').onclick = () => tab('ask');

function citations(container, pages = [], sources = []) {
  const c = el('div', 'citations');
  for (const n of pages || []) c.append(btn('原文 P. ' + n, '', () => {
    drawer('');
    go(n)
  }));
  for (const [i, s] of(sources || []).entries())
    if (safeUrl(s.url)) c.append(link('[' + (i + 1) + '] ' + (s.title || new URL(s.url).hostname), s
      .url));
  if (c.childNodes.length) container.append(c)
}
let graphId = 0;

function diagram(graph) {
  if (!graph || !graph.nodes?.length) return null;
  const nodes = graph.nodes,
    edges = graph.edges || [],
    card = el('figure', 'figure-card');
  const cap = el('figcaption', 'figure-head');
  cap.append(icon('flow'), document.createTextNode('算法图解'));
  cap.title = graph.title;
  card.append(cap);
  const gid = 'arrow-' + (++graphId),
    w = 284,
    step = 68,
    h = nodes.length * step + 4,
    svg = svgNode('svg', {
      class: 'diagram',
      viewBox: '0 0 ' + w + ' ' + h,
      role: 'img',
      'aria-label': graph.title || '算法步骤图'
    });
  const title = svgNode('title');
  title.textContent = graph.title || '算法流程';
  svg.append(title);
  const defs = svgNode('defs'),
    marker = svgNode('marker', {
      id: gid,
      viewBox: '0 0 10 10',
      refX: '8',
      refY: '5',
      markerWidth: '6',
      markerHeight: '6',
      orient: 'auto'
    });
  marker.append(svgNode('path', {
    d: 'M0 1L9 5 0 9z',
    fill: '#64816b'
  }));
  defs.append(marker);
  svg.append(defs);

  function label(x, y, t, attrs = {}) {
    const e = svgNode('text', {
      x,
      y,
      fill: '#425846',
      'font-size': '10',
      ...attrs
    });
    e.textContent = t;
    svg.append(e)
  }
  for (const [i, e] of edges.entries()) {
    if (!nodes[e.start - 1] || !nodes[e.end - 1]) continue;
    const a = (e.start - 1) * step + 24,
      b = (e.end - 1) * step + 24,
      straight = e.end === e.start + 1,
      left = e.end > e.start;
    const rail = left ? 8 + (i % 3) * 5 : 276 - (i % 3) * 5;
    const d = straight ? 'M142 ' + (a + 17) + ' V' + (b - 18) : 'M' + (left ? 33 : 251) + ' ' + a +
      ' H' + rail + ' V' + b + ' H' + (left ? 32 : 252);
    const path = svgNode('path', {
      d,
      fill: 'none',
      stroke: '#789179',
      'stroke-width': '1.4',
      'stroke-dasharray': straight ? 'none' : '3 2',
      'marker-end': 'url(#' + gid + ')'
    });
    const tip = svgNode('title');
    tip.textContent = e.start + ' → ' + e.end + ' ' + e.label;
    path.append(tip);
    svg.append(path);
    if (straight) label(150, a + 37, Array.from(e.label || '').slice(0, 12).join(''), {
      'font-size': 8.9
    })
  }
  const fills = ['#fdfcf6', '#deead6', '#f2e4ce', '#e2e9ec'];
  nodes.forEach((name, i) => {
    const y = i * step + 7;
    svg.append(svgNode('rect', {
      x: 33,
      y,
      width: 218,
      height: 34,
      rx: 5,
      fill: fills[i % fills.length],
      stroke: '#bac9b6'
    }));
    label(45, y + 21, String(i + 1).padStart(2, '0'), {
      'font-family': 'monospace',
      'font-size': 10,
      fill: '#75846f'
    });
    const text = Array.from(name);
    label(69, y + 22, text.length > 19 ? text.slice(0, 18).join('') + '…' : name, {
      'font-size': 12,
      'font-weight': 600
    });
  });
  card.append(svg);
  const extra = edges.filter(e => e.end !== e.start + 1);
  if (extra.length) card.append(el('p', 'fine', extra.map(e => e.start + ' → ' + e.end + '　' + e.label)
    .join('　·　')));
  return card
}

function fold(label, name, sections) {
  if (!sections?.length) return null;
  const d = el('details', 'fold');
  d.dataset.fold = label;
  const summary = el('summary');
  summary.append(icon(name), document.createTextNode(label));
  d.append(summary);
  const c = el('div', 'fold-content');
  for (const sec of sections) {
    const a = el('article');
    if (sec.title) a.append(el('h4', '', sec.title));
    a.append(el('p', '', sec.body));
    citations(a, sec.pages, sec.sources);
    c.append(a)
  }
  d.append(c);
  return d
}

function answerText(r) {
  const p = el('p', 'message-text'),
    str = r.answer;
  for (const part of str.split(/(\*\*[^*]+\*\*|\x60[^\x60]+\x60|\[(?:\d+|C\d+|P\d+-\d+)\])/g)) {
    if (part.startsWith('**') && part.endsWith('**')) p.append(el('strong', '', part.slice(2, -2)));
    else if (part.charCodeAt(0) === 96 && part.charCodeAt(part.length - 1) === 96) p.append(el('code',
      '', part.slice(1, -1)));
    else if ((r.evidence||[]).some(x=>'['+x.id+']'===part))p.append(evidenceLink(r.evidence.find(x=>'['+x.id+']'===part), part));
    else if (/^\[\d+\]$/.test(part) && safeUrl(r.sources?.[Number(part.slice(1, -1)) - 1]?.url)) p
      .append(link(part, r.sources[Number(part.slice(1, -1)) - 1].url));
    else p.append(document.createTextNode(part))
  }
  return p
}

function stateLine(j) {
  const p = el('p', 'status-note' + (j.state === 'failed' ? ' error' : ''), j.state === 'failed' ? j
    .error : j.progress || '处理中…');
  p.setAttribute('role', 'status');
  return p
}

function blockPending(j) {
  return j && ['queued', 'working'].includes(j.state)
}
async function retryGuide() {
  const id = state.id;
  try {
    await api(paperAPI('/guide', id), {
      search: $('web-search').checked
    });
    if (id === state.id) {
      const doc = await api(paperAPI('', id));
      if (id !== state.id) return;
      state.doc = doc;
      insights();
      watch()
    }
  } catch (e) {
    say(e.message)
  }
}

function guide(area, d) {
  const g = d.guide,
    j = d.analysis;
  if (j && j.state !== 'done') {
    area.append(stateLine(j));
    if (j.state === 'failed') area.append(btn('重新拆解', 'small-action', retryGuide))
  }
  if (!g) {
    if(d.course){courseOutline(area,d);return}
    if (!j) area.append(btn('生成论文拆解', 'small-action', retryGuide));
    return
  }
  const line = el('div', 'meta-line');
  line.append(el('span', '', g.origin), el('span', '', g.steps.length + ' 个算法步骤'));
  area.append(line, el('h3', '', g.algorithm || g.title), el('p', 'body-copy', g.overview));
  const pic = diagram(g.figure);
  if (pic) area.append(pic);
  const blocks = [
    ['版本与原文', 'file', [...(g.bibliography || []), {
      title: '本地 PDF',
      body: d.count + ' 个物理页 · SHA-256 ' + d.id
    }]],
    ['先修知识', 'book', g.prerequisites?.map(t => ({
      body: t
    }))],
    ['逐步读算法', 'layers', g.steps],
    ['为什么这样设计', 'flow', g.design],
    ['源码怎样实现', 'code', g.implementation],
    ['复现记录与条件', 'check', g.reproduction],
    ['剩余缺口与验收', 'flag', g.gaps]
  ];
  for (const [text, name, secs] of blocks) {
    const f = fold(text, name, secs);
    if (f) area.append(f)
  }
  citations(area, [], g.sources);
  if (g.ocr_pages?.length) area.append(el('p', 'fine', '以下页使用页图识别，转录请与原图核对：' + g.ocr_pages.join('、')));
  if (g.missing_pages?.length) area.append(el('p', 'status-note', '无文本层的页码：' + g.missing_pages.join(
    '、') + '。请对照原版页图。'));
  if (g.origin === 'ChatGPT 拆解') area.append(el('p', 'fine', '检索记录：' + (g.searches?.join('；') ||
    '本次未执行网页检索')))
}

function chat(area, d) {
  if (!d.messages.length) {
    area.append(el('h3', '', state.draft ? '围绕选文提问' : '从一句原文开始'), el('p', 'body-copy',
      '选中论文中的文字，点击「就此提问」。也可以在下方直接输入问题。'));
    return
  }
  for (const j of d.messages) {
    const sec = el('article', 'question-block');
    const fromBook=j.request.origin==='book';
    sec.append(el('div','meta-line',fromBook?'拆解正文 · '+j.request.section:'第 '+j.request.page+' 页 · '+(j.request.quote?'选文问答':'论文问答')));
    if (j.request.quote) sec.append(btn(j.request.quote, 'quote-box', () => {
      drawer('');
      if(fromBook) openChapter(j.request.anchor);else go(j.request.page)
    }));
    sec.append(el('h4', '', j.request.question));
    if (j.state === 'done') {
      const r = j.result;
      sec.append(answerText(r));
      const fig = diagram(r.figure);
      if (fig) sec.append(fig);
      courseEvidence(sec,r);
      if(fromBook && !r.evidence?.length)sec.append(el('p','fine','本回答依据拆解选文，未引用可定位的论文页或源码行。'));
      citations(sec, r.pages, r.sources);
      sec.append(el('p', 'status-note', r.searches?.length ? '已检索：' + r.searches.join('；') :
        '依据论文与已有拆解 · 未执行网页检索'))
    } else {
      sec.append(stateLine(j));
      if (j.state === 'failed') sec.append(btn('重新提问', 'small-action', () => {
        state.draft = j.request.origin==='book' || j.request.quote ? {...j.request} : null;
        chip();
        $('question').value = j.request.question;
        $('web-search').checked = j.request.search;
        $('question').focus()
      }))
    }
    area.append(sec)
  }
}

function insights() {
  const area = $('insights'),
    opens = [...area.querySelectorAll('details[open]')].map(d => d.dataset.fold),
    top = area.scrollTop;
  $('guide-label').textContent=state.doc?.course?'本章导读':'论文拆解';
  pressed($('tab-guide'), state.tab === 'guide');
  pressed($('tab-ask'), state.tab === 'ask');
  area.replaceChildren();
  if (!state.doc) return;
  if (state.tab === 'guide') guide(area, state.doc);
  else chat(area, state.doc);
  for (const f of area.querySelectorAll('details'))
    if (opens.includes(f.dataset.fold)) f.open = true;
  area.scrollTop = top;
  $('send').disabled = state.busy || state.doc.messages.some(blockPending)
}
$('ask-form').onsubmit = async e => {
  e.preventDefault();
  const q = $('question').value.trim(),
    id = state.id;
  if (!q || !state.doc || state.busy) return;
  const draft = state.draft || (state.mode==='book' ? bookRequest() : {page:state.page,quote:''});
  state.busy = true;
  $('send').disabled = true;
  try {
    await api(paperAPI('/ask', id), {
      ...draft,
      question: q,
      search: $('web-search').checked
    });
    if (id !== state.id) return;
    state.draft = null;
    chip();
    $('question').value = '';
    const d = await api(paperAPI('', id));
    if (id !== state.id) return;
    state.doc = d;
    tab('ask');
    $('insights').scrollTop = $('insights').scrollHeight;
    watch()
  } catch (err) {
    say(err.message)
  } finally {
    if (id === state.id) {
      state.busy = false;
      insights()
    }
  }
};
$('question').onkeydown = e => {
  if (e.key === 'Enter' && (e.ctrlKey || e.metaKey)) {
    $('ask-form').requestSubmit();
    e.preventDefault()
  }
};

$('import').onclick = () => {
  $('upload-status').textContent = '';
  $('upload-dialog').showModal()
};
$('close-import').onclick = () => $('upload-dialog').close();
let uploading = false;
async function upload(file) {
  if (!file || uploading) return;
  if (file.size > 64 * 1024 * 1024) {
    $('upload-status').textContent = '文件超过 64 MiB。';
    return
  }
  uploading = true;
  $('upload-status').textContent = '正在导入…';
  $('file').disabled = true;
  try {
    const r = await fetch('/api/import', {
      method: 'POST',
      body: file,
      headers: {
        'Content-Type': 'application/pdf',
        'X-Filename': encodeURIComponent(file.name),
        'X-Paperdesk': '1',
        'X-Research': $('import-search').checked ? '1' : '0'
      }
    });
    const j = await r.json();
    if (!r.ok) throw Error(j.error || '导入失败');
    $('upload-dialog').close();
    $('filter').value = '';
    state.mine = false;
    await library();
    await choose(j.id);
    say(j.duplicate ? '这篇论文已在书库中。' : '已加入书库，正在拆解论文。')
  } catch (e) {
    $('upload-status').textContent = e.message
  } finally {
    uploading = false;
    $('file').disabled = false;
    $('file').value = ''
  }
}
$('file').onchange = e => upload(e.target.files[0]);
for (const type of ['dragenter', 'dragover', 'dragleave', 'drop']) $('drop').addEventListener(type,
e => {
  e.preventDefault();
  $('drop').classList.toggle('drag', type === 'dragover' || type === 'dragenter');
  if (type === 'drop') upload(e.dataTransfer.files[0])
});
document.onkeydown = e => {
  if (['INPUT', 'TEXTAREA'].includes(document.activeElement.tagName) || $('upload-dialog').open)
return;
  if (e.key === '/') {
    e.preventDefault();
    if (innerWidth <= 1050) drawer('books');
    $('filter').focus()
  }
  if (e.key === 'Escape') {
    drawer('');
    $('ask-selection').hidden = true
  }
};
(async () => {
  try {
    await library();
    const id = localStorage.getItem('paperdesk-active');
    const active = state.books.find(p => p.id === id) || state.books[0];
    if (active) {if(!(await handleCourseRoute()))await choose(active.id)}
    else $('paper').append(el('p', 'empty', '添加一篇 PDF，开始阅读。'))
  } catch (e) {
    say(e.message)
  }
})();
