# Journal : Building / testing

## Creating confindr container (docker) 
date_finished:: 2023-09-12

<!-- one of the tutorials https://kevalnagda.github.io/conda-docker-tutorial -->

Building in Docker 

```shell
docker build -t confindr_1.8.1 -f Dockerfile .
docker tag confindr_1.8.1 evezeyl/confindr_1.8.1
docker push evezeyl/confindr_1.8.1
```

Testing the build 
```shell
docker run -it confindr_1.8.1
# commamds test 
```

Getting image to singularity
```shell
singularity pull confindr_1.8.1.sif docker://evezeyl/confindr_1.8.1
singularity shell confindr_1.8.1.sif --bind "directory_to_bind"
```

Tested with admixture and non admixture. OEIO preselection samples.

## 