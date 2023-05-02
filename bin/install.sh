python3.11 -m venv tmp/venv
chmod +x ./bin/activate.sh
chmod +x ./bin/deactivate.sh
chmod +x ./bin/reinstall.sh
chmod +x ./bin/uninstall.sh
(source bin/activate.sh && pip install -r requirements.txt)