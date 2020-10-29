echo "🛠  Setting up workspace ..."

echo "🗂  Creating workspace file ..."
curdir_only="$(basename $(pwd))"
echo '{"folders": [{"path": "."}]}' > $curdir_only.code-workspace


echo "🖥  Creating virtual environment"
python3 -m venv venv


echo "📄  Upddating .gitignore"
echo "$curdir_only.code-workspace" >> .gitignore


echo "📄  Create placeholder requirements.txt"
touch requirements.txt

