@post_increment_decrement@
expression V1, V2;
position pos;
@@

(
V1 = V2++@pos
|
V1 = V2--@pos
|
V1 = V2 ++@pos
|
V1 = V2 --@pos
)

@script:python@
pos << post_increment_decrement.pos;
V2 << post_increment_decrement.V2;
@@

print(f"Match found at line {pos[0].line} in {pos[0].file}")
