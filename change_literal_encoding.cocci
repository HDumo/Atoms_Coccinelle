
@change_of_literal_encoding@
expression E;
position p;
@@

printf("%d", E);@p

@script:python@
p << change_of_literal_encoding.p;
@@

print(f"Found {len(p)} occurrences in file {p[0].file}")

