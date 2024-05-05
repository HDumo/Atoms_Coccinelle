@repurposed_variables@
identifier argc, V1;
position pos;
@@

argc = V1@pos

@script:python@
pos << repurposed_variables.pos;
argc << repurposed_variables.argc;

@@

for i in range(len(pos)):
    print(f"Repurposed variable found: {argc[i]} at line {pos[i].line} in {pos[i].file}")
