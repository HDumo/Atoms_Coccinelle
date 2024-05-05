@implicit_predicate@
expression Expr;
position pos;
@@

if (Expr)

@script:python@
pos << implicit_predicate.pos;
Expr << implicit_predicate.Expr;

@@
for i in range(len(pos)):
    print(f"Implicit predicate found: Expr={Expr[i]} at line {pos[i].line} in {pos[i].file}")
