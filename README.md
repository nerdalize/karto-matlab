# karto-matlab
A dockerized version of the MATLAB Runtime: a standalone set of shared libraries that enables the execution of compiled MATLAB applications or components 
on computers that do not have MATLAB installed.

## Requirements
The MATLAB  container requires a Docker running on a linux host (Boot2Docker, Ubuntu, CentOS etc) and a Docker client 
that is able to connect to this host. Instructions for installing Docker can be found [here](https://docs.docker.com/installation/)

# Usage
Getting the container to work requires the follow steps:

	1. Clone this repository to a working directory of your choosing: `git clone https://github.com/nerdalize/karto-matlab.git`
	2. Build the MATLAB Docker container using `docker build -t nerdalize/karto-matlab:latest .`
	3. The Container can now be run using `docker run --rm -it  -v <PATH_TO_JOB>:/job nerdalize/karto-matlab <JOB_ARGUMENTS>`

