@type_conversion@
expression E1, E2;
position p;
@@

E1 "(" @ E2 ")"

@script:python@
p << type_conversion.p;
E1 << type_conversion.E1;
E2 << type_conversion.E2;
@@

print(f"Line {p[0].line} in file {p[0].file}:  expression - {E1},  expression - {E2}");
