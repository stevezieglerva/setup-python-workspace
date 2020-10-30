echo "🛠  Setting up workspace ..."

echo "🗂  Creating workspace file ..."
curdir_only="$(basename $(pwd))"
echo '{"folders": [{"path": "."}]}' > $curdir_only.code-workspace


echo "🖥  Creating virtual environment"
python3 -m venv venv


echo "📄  Upddating .gitignore"
echo "$curdir_only.code-workspace" >> .gitignore


echo "📄  Create placeholder requirements.txt"
echo "html-testRunner" > requirements.txt


echo "✅  Create tests folder"
mkdir tests
touch tests/test_unit.py



code $curdir_only.code-workspace
