# FROM instruction
docker build -t chelixx/from from
docker image ls

# RUN instruction
docker build -t chelixx/run run

docker build -t chelixx/run run --progress=plain --no-cache