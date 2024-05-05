@reversed_subscripts@
expression E1, E2;
position pos;
@@


E2[E1] @pos

@script:python@
pos << reversed_subscripts.pos;
E2 << reversed_subscripts.E2;
@@

print(f"Reversed subscript found: at line {pos[0].line} in {pos[0].file}")


