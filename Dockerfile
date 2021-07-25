FROM b2bwebid/r-base:buster
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
RUN echo "deb http://cloud.r-project.org/bin/linux/debian buster-cran40/" \
       >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com \
       --recv-key E19F5F87128899B192B1A2C2AD5F960A256A04AF && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get clean
CMD ["/bin/bash"]
