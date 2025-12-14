import sys

# sys.argv = list of arguments passed to python file
# Example: python main.py OMEGA  → sys.argv = ["main.py", "OMEGA"]

name = None

# Check if user passed a name
if len(sys.argv) > 1:
    name = sys.argv[1]
else:
    print("No input provided")
    exit()

# Print the message
print("HELLO", name)
