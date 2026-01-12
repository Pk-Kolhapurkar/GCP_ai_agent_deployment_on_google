uvicorn deploy:app --port 8080  --reload

sudo lsof -t -i:8080 | xargs sudo kill -9

docker build -t my-ml-app:v1 .
docker buildx build --platform linux/amd64 -t my-ml-app:v1 .

docker run -d -p 8080:8080 my-ml-app:v1

# To delete all containers including its volumes use,
docker rm -vf $(docker ps -aq)

#To delete all the images,
docker rmi -f $(docker images -aq)

docker cp container_id:/app/model.joblib .

sudo lsof -t -i:8080
sudo kill -9 
sudo lsof -t -i:8080 | xargs sudo kill -9


docker image ls
docker ps

docker exec -it container_id bash


sudo docker cp container_id:/file .
