# Serf

This example starts [Serf](http://serfdom.io) and connects to another node via
Docker links. The file `serf.sh` starts the serf agent and if the link is
present, join the "master".

It's important to name the link "serf", otherwise the exported environment
variable won't be checked in the bash script.


## Run

Run the example:

    docker run -d -name serf_example serf
    docker run -d -link serf_example:serf serf

## Build

    docker build -t serf .
