@rule_macro_operator_precedence@
identifier M;
expression E;
@@

#define M 64-1
E*M

@script:python@
from cocotb.out import print_matches

@rule_macro_operator_precedence@
identifier M;
expression E;
@@

#define M 64-1
E*M

@script:python@
print_matches("Found %d occurrences in \"FILE PATH and NAME\"" % len(_matches))
