python3 -m pip install --upgrade setuptools wheel
python3 -m pip install --upgrade twine

python3 setup.py sdist bdist_wheel

twine upload --repository-url https://test.pypi.org/legacy/ dist/*
python3 -m pip install --upgrade --force-reinstall --index-url https://test.pypi.org/simple/ cdmon_automator