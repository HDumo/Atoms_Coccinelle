@pre_increment_decrement@
expression V1, V2;
position pos;
@@

(
V1 = ++V2@pos
|
V1 = --V2@pos
|
V1 = ++ V2@pos
|
V1 = -- V2@pos
)


@script:python@
pos << pre_increment_decrement.pos;
V1 << pre_increment_decrement.V1;
V2 << pre_increment_decrement.V2;
@@

for i in range(len(pos)):
    print(f"Pre-increment/decrement found: V1={V1[i]}, V2={V2[i]} at line {pos[i].line} in {pos[i].file}")
