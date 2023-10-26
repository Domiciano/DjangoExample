echo "Building project..."
python -m pip install -r requirements.txt

echo "Making migrations..."
python manage.py makemigrations --noinput
python manage.py migrate --noinput

echo "Collection statics..."
python manage.py collectstatic --noinput --clear
