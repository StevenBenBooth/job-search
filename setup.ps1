# Create a new virtual environment
python -m venv .venv

# install required packages
.venv/Scripts/Activate.ps1
pip install -r requirements.txt
deactivate

# setup task to launch on startup
