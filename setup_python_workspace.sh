echo "🛠  Setting up workspace ..."

echo "🗂  Creating workspace file ..."
curdir_only="$(basename $(pwd))"
echo '{"folders": [{"path": "."}]}' > $curdir_only.code-workspace


echo "🖥  Creating virtual environment"
python3 -m venv venv


echo "📄  Upddating .gitignore"
echo "$curdir_only.code-workspace" >> .gitignore
echo "reports/**" >> .gitignore


echo "📄  Create placeholder requirements.txt"
echo "html-testRunner" > requirements.txt


echo "✅  Create tests folder"
mkdir tests
touch tests/test_unit.py
curl -o test_and_format.py https://raw.githubusercontent.com/stevezieglerva/python-unittest-formatted-results/main/test_and_format.py
curl -o report_template_json.txt https://raw.githubusercontent.com/stevezieglerva/python-unittest-formatted-results/main/report_template_json.txt


code $curdir_only.code-workspace
