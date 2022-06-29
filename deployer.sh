set -e
echo "Deploying application ..."
php artisan down --message "The app is being updated"

git pull origin master

php artisan key:generate
composer install

php artisan up

echo "Application deployed!"
