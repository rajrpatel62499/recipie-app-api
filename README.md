# recipie-app-api
Api for recipie app using Django rest framework and Docker


# commands
> docker build -t recipe-app-api . <br>
> docker-compose up <br>
> docker-compose run app sh -c "django-admin.py startproject app ."
> docker-compose run app sh -c "python manage.py test && flake8" [for testing and linting purpose]
> docker-compose run app sh -c "python manage.py startapp core"  [for making an app]
> docker-compose run app sh -c "python manage.py makemigrations core"