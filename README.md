composer require hhxsv5/laravel-s


composer require "hhxsv5/laravel-s:~3.6.0" -vvv


composer require beyondcode/laravel-websockets
php artisan vendor:publish --provider="BeyondCode\LaravelWebSockets\WebSocketsServiceProvider" --tag="migrations"
php artisan migrate
php artisan vendor:publish --provider="BeyondCode\LaravelWebSockets\WebSocketsServiceProvider" --tag="config"


php artisan websocket:serve
php artisan serve

laravel-echo-server start


https://www.adampatterson.ca/2018/simple-osx-mamp-development-platform/

Install Redis (Optional):
$ brew install redis

Launch Redis on computer starts.

$ ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents

Start Redis server via “launchctl”.

$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist

Test if Redis server is running.

$ redis-cli ping
