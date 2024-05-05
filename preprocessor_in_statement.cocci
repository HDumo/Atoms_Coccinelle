@rule_preprocessor_in_statement@
identifier V;
@@

int V = 1
#define M 1
+ 1;

@script:python@
from cocotb.out import print_matches

@rule_preprocessor_in_statement@
identifier V;
@@

int V = 1
#define M 1
+ 1;

@script:python@
print_matches("Found %d occurrences in \"FILE PATH and NAME\"" % len(_matches))
