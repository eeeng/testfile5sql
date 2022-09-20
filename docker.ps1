#p-sh docker container custom
docker build --rm -t demo/data:0.0 .
docker run --rm --name demo-data -p 5000:5000 demo/data:0.0
