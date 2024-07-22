## Installation

### With Docker
- Run ```cp .env.example .env```.
- Run the below command to install Composer dependencies:
    ```sh
    docker run --rm \
        -u "$(id -u):$(id -g)" \
        -v $(pwd):/var/www/html \
        -w /var/www/html \
        laravelsail/php81-composer:latest \
        composer install --ignore-platform-reqs
    ```
- Run ```./vendor/bin/sail up -d```.
- Run ```./vendor/bin/sail artisan migrate --seed```. If you face error `Connection refused`, set `DB_HOST=mysql` in .env file.
- Run ```./vendor/bin/sail npm install```.
- Run ```./vendor/bin/sail npm run prod``` or ```./vendor/bin/sail npm run watch```.

`sail` is equivalent of `docker-compose`, read [`laravel/sail`](https://laravel.com/docs/8.x/sail) doc.


### Without Docker

- Run ```cp .env.example .env```
- Run ```composer install```
- Provide db name, username and password in .env
- Run ```php artisan migrate --seed```
- Run ```npm install```
- Run ```npm run prod``` or ```npm run watch```

Admin credentials:

```
Email: admin@admin.com
Password: 12345
```

For more info, visit the <a href="http://arifszn.github.io/ezfolio">docs</a>.


## Screenshots

### Admin Panel
<kbd><img src="https://arifszn.github.io/ezfolio/img/assets/screenshots/login.png" alt="Login"/></kbd>

<kbd><img src="https://arifszn.github.io/ezfolio/img/assets/screenshots/dashboard.png" alt="Dashboard"/></kbd>

<kbd><img src="https://arifszn.github.io/ezfolio/img/assets/screenshots/basic-config.png" alt="Config"/></kbd>

<kbd><img src="https://arifszn.github.io/ezfolio/img/assets/screenshots/theme.png" alt="Theme"/></kbd>

<kbd><img src="https://arifszn.github.io/ezfolio/img/assets/screenshots/visitors.png" alt="Visitors"/></kbd>

<kbd><img src="https://arifszn.github.io/ezfolio/img/assets/screenshots/project.png" alt="Project"/></kbd>

### Front
<kbd><img src="https://arifszn.github.io/ezfolio/img/assets/screenshots/procyon.png" alt="Procyon"/></kbd>

<kbd><img src="https://arifszn.github.io/ezfolio/img/assets/screenshots/rigel.png" alt="Rigel"/></kbd>

<kbd><img src="https://arifszn.github.io/ezfolio/img/assets/screenshots/vega.png" alt="Vega"/></kbd>

## License

**Ezfolio** is licensed under the [MIT License](https://github.com/arifszn/ezfolio/blob/main/LICENSE).
