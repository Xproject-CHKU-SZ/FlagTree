ARG RUNTIME_IMAGE=flagtree-xpu-numerics-runtime:20261030-v3
FROM ${RUNTIME_IMAGE}
COPY replay.py verify_install.py /release/
COPY README.md SOLUTION.md /release/
LABEL org.flagtree.numerics.source="5b175f6ab17a72a8ed583fc12db4b81169ef587d"
WORKDIR /research
CMD ["sleep", "infinity"]