@conditional_operator@
position pos;
expression V1, V2;
@@

 V2 = (V1==3)?2:V2@pos

@script:python@
pos << conditional_operator.pos;
V1 << conditional_operator.V1;
V2 << conditional_operator.V2;
@@

print(f"Conditional operator found: V2 = ({V1}==3)?2:{V2} at line {pos.line} in {pos.file}")
