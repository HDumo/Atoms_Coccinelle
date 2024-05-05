@omitted_curly_braces@
position pos;
statement S1, S2;
@@

if (...) S1; S2;

@script:python@
pos << omitted_curly_braces.pos;
S1 << omitted_curly_braces.S1;
S2 << omitted_curly_braces.S2;
@@
for i in range(len(pos)):
    if "{" in S1[i]:
        print(f"Omitted curly braces found: {S1[i]} at line {pos[i].line} in {pos[i].file}")
    elif ";" in S1[i] and ";" not in S2[i]:
        print(f"Omitted curly braces found: {S1[i]} {S2[i]} at line {pos[i].line} in {pos[i].file}")
