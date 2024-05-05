import os

# Specify the folder containing the .c files
folder_path = "path/to/your/folder"

# Define the semantic patch
pattern = """
@change_of_literal_encoding@
expression E;
position p;
@@

printf("%d", E);@p

@script:python@
p << change_of_literal_encoding.p;
@@

print(f"Found {len(p)} occurrences in file {p[0].file}")
"""

# Iterate over each .c file in the folder
for filename in os.listdir(folder_path):
    if filename.endswith(".c"):
        file_path = os.path.join(folder_path, filename)
        print(f"Scanning file: {file_path}")
        # Apply the semantic patch to each file
        os.system(f"spatch --sp-file script.cocci {file_path}")
