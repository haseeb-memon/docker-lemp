# DOCKERIZE LEMP Stack
- Nginx
- PHP 7.2
- MySQL

## :rocket: Quick Start 
- Install and launch Docker  
- `cp .env.dist .env`  

### for start LEMP: 
``docker-compose up -d``
### for stop LEMP:
``docker-compose stop``
### for remove LEMP:
`` docker-compose down``


| Service      | Path                    |
| ------------ | ----------------------- |
| Website      | `http://www.lemp.local` | 



## :tent: Use a virtual host
- On your machine, run `$ sudo nano /etc/hosts` and add `127.0.0.1   www.lemp.local`
- Run `$ docker-compose up`
- If it fails make sure no service like Nginx is running on port 80 

## About MySQL credentials
If you change mysql credentials in .env you have to re-create mysql container:
- Database will be deleted, make a dump with PhpMyAdmin
- Remove container and volume : `$ docker-compose rm -fv mysql`
- Run : `docker-compose up` 
