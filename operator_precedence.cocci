@operator_precedence@
expression E1, E2, E3;
position pos;
@@

(
E1 && E2 || E3@pos
|
E1 && E3 || E2@pos
|
E2 && E1 || E3@pos
|
E2 && E3 || E1@pos

)

@script:python@
pos << operator_precedence.pos;
E1 << operator_precedence.E1;
E2 << operator_precedence.E2;
E3 << operator_precedence.E3;

@@

for i in range(len(pos)):
	print(f"Operator precedence found E1={E1[i]}, E2={E2[i]}, E3={E3[i]} at line {pos.line} in {pos.file}")

