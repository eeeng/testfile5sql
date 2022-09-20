#p-sh docker container custom
docker build --rm -t demo/flask-api:0.0 .
docker run --rm --name demo-flask-api -p 5000:5000 demo/flask-api:0.0
