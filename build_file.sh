echo "BUILD START"

# Check Python version
python3 --version
python3.9 --version || echo "python3.9 not found"

# Create virtual env
python3 -m venv venv

# Activate
source venv/bin/activate

# Upgrade pip and tools
pip install --upgrade pip setuptools wheel

# Install dependencies
pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --noinput

echo "BUILD END"
