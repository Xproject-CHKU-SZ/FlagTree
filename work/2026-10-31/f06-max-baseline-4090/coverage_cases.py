import small_cases, large_cases
def cases():
    result=small_cases.cases()+large_cases.cases()
    for i,s in enumerate(result): s["ordinal"]=i
    return result
def build_cpu_case(spec):
    return large_cases.build_cpu_case(spec) if spec["case_id"].startswith("large:") else small_cases.build_cpu_case(spec)
