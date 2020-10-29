# setup-python-workspace

Initializes a directory for VSCode workspace for Python. It does the following:

* Creates a VSCode workspace file
* Adds the workspace file to .gitignore
* Creates a Python virtual environment
* Creates an initial requirements.txt file



## Usage
```bash
# Navigate to the folder for the new project
cd test_project_folder

# Run the sh script
. ../setup_python_workspace.sh
```

Create an alias to allow you to run it from any folder

```bash
alias sp=". /path/setup_python_workspace.sh" # Setup Python project
```