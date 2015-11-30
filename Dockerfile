FROM ubuntu:14.04
MAINTAINER Ad van der Veer <a.vanderveer@nerdalize.com>

RUN apt-get update; apt-get install -y libxtst6 libxt6 curl unzip; apt-get clean
RUN curl http://nl.mathworks.com/supportfiles/downloads/R2015b/deployment_files/R2015b/installers/glnxa64/MCR_R2015b_glnxa64_installer.zip > /tmp/matlab.zip; unzip /tmp/matlab.zip -d /tmp/matlab; /tmp/matlab/install -mode silent -agreeToLicense yes; rm -fr /tmp/matlab*

VOLUME /job
WORKDIR /job
ENV LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/:/usr/local/MATLAB/MATLAB_Runtime/v90/runtime/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v90/bin/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v90/sys/os/glnxa64
ADD ./run.sh /run.sh

ENTRYPOINT ["/run.sh"]
