FROM b2bwebid/r-base:buster
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
RUN echo "deb http://cloud.r-project.org/bin/linux/debian buster-cran40/" \
       >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com \
       --recv-key B8F25A8A73EACF41 && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get clean
CMD ["/bin/bash"]
