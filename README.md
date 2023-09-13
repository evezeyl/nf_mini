# nf_mini


development stage. Mini modules from things I feel its a pain to find again all the time

## Guidelines: 

IMPORTANT !: 
- Only use containers - so can be reused on cluster (no other than containers)
- Configuration labels per module : standardized with håkons labels ! 
- standardization all format as Håkons for reusability
- all DSL2 !!


## Workflows 
> with detailed submodules

## Usage
> testing usage 

```

```

## On SAGA

To use solely an image: use [apptainer](https://apptainer.org/)

- local images on saga: `/cluster/projects/nn9305k]$ cd nextflow/singularity_img/`
- containers that can be used: see
    - <https://quay.io/>
    - DockerHub

```shell
IMG=<image_path/name.sif> 
apptainer shell $IMAGE 
# then you can use the commands

# To bind directories
# apptainer shell --bind <your_dir>,<another_your_dir>:<path_in_container> my_container.sif
apptainer shell --bind /opt,/data:/mnt my_container.sif
```
See here if you need more to bind paths to the container (so you can see the files you are working with)
<https://apptainer.org/docs/user/latest/bind_paths_and_mounts.html> 

