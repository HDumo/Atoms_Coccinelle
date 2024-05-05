@comma_operator@
expression V1, V2;
position pos;
@@

(
V2 = (V1 += 1, V1)@pos
|
V1 = (V2 += 1, V2)@pos
)
@script:python@
pos << comma_operator.pos;
V1 << comma_operator.V1;
V2 << comma_operator.V2;

@@
for i in range(len(pos)):
    print(f"Comma operator found: V2={V2[i]}, V1={V1[i]} at line {pos[i].line} in {pos[i].file}")
