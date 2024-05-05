@logic_as_control_flow@
expression V1, F2;
position pos;
@@

(
V1 && F2@pos
|
V1 || F2@pos
)
@script:python@
pos << logic_as_control_flow.pos;
F2 << logic_as_control_flow.F2;
@@

if F2 != "()":
    print(f"Match found at line {pos[0].line} in {pos[0].file}")
