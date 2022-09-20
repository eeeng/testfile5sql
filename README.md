#docker build command for repo 
docker build -t demo/data:0.0 .
#docker run, name, assignement, lhost, port id, detach, publish
docker run && docker run --name demo/data.py -d -p demo/data:0.0
#inspect var
docker ps
docker image inspect [opts.] image [img....]
