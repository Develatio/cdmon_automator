python3 -m pip install --upgrade setuptools wheel
python3 -m pip install --upgrade twine

read -e -p "Did you create a git tag? (y/n)" resp
if [ "$resp" != "y" ]; then
    exit
fi

read -e -p "Did you update the 'version' in the setup.py? (y/n)" resp
if [ "$resp" != "y" ]; then
    exit
fi

python3 setup.py sdist bdist_wheel
twine upload dist/*