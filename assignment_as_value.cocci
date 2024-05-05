@assignment_As_Value_Rule@
expression a, b, c;
position pos;
@@

a=b=c@pos

@script:python@
pos << assignment_As_Value_Rule.pos;
c << assignment_As_Value_Rule.c;
@@

if c != "=":
    print(f"Match found at line {pos[0].line} in {pos[0].file}")
