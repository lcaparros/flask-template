# flask-template
Get a Flask app skeleton at the moment

## Development

To run locally the application export the next two environment variables>

```shell
export FLASK_APP=app/app
export FLASK_ENV=development
```

Then run the Flask server typing:

```shell
flask run
```

## Production

The recommended solution for production environment is to build the provided Dockerfile and run the application in a docker container. It can be done with:

```shell
docker build . -t flask_image
docker run --name flask_container -p 80:80 -v /logs:/srv/flask_app/logs flask_image
```

This dockerized version is using nginx to expose the service and uWSGI to serve.