cd `dirname $0`
docker-compose build
docker-compose up -d
# laravelプロジェクトが存在しない場合
# docker-compose exec php composer create-project --prefer-dist "laravel/laravel=6.5.2" .
docker-compose exec php composer create-project --prefer-dist laravel/laravel .
docker-compose exec php composer require --dev barryvdh/laravel-ide-helper
docker-compose exec php composer require --dev doctrine/dbal
docker-compose exec php composer require --dev barryvdh/laravel-debugbar
# docker-compose exec php php artisan make:migration create_staff_types_table
# docker-compose exec php php artisan make:migration create_stores_table
# docker-compose exec php php artisan make:migration create_staffs_table
# docker-compose exec php php artisan make:migration create_order_item_genres_table
# docker-compose exec php php artisan make:migration create_order_items_table
# docker-compose exec php php artisan make:migration create_sales_item_genres_table
# docker-compose exec php php artisan make:migration create_sales_items_table
# docker-compose exec php php artisan make:migration create_daily_store_orders_table
# docker-compose exec php php artisan make:migration create_daily_item_orders_table
# docker-compose exec php php artisan make:migration create_daily_store_sales_table
# docker-compose exec php php artisan make:migration create_daily_item_sales_table
# docker-compose exec php php artisan make:migration create_attendance_reports_table
# docker-compose exec php php artisan make:migration 
# docker-compose exec php php artisan make:auth
cp ./setting/.env_base ./src/.env
docker-compose exec php composer install
docker-compose exec php composer require --dev barryvdh/laravel-debugbar
docker-compose exec php php artisan key:generate
docker-compose exec php php artisan migrate:refresh
# docker-compose exec php php artisan db;seed
docker-compose down