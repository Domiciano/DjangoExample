echo "Building project..."
pip install -r requirements.txt

echo "Making migrations..."
python3.9 manage.py makemigrations 
python3.9 manage.py migrate 

echo "Collection statics..."
python3.9 manage.py collectstatic
