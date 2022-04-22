FROM b2bwebid/r-base:bullseye
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
RUN echo "deb http://cloud.r-project.org/bin/linux/debian bullseye-cran40/" \
       >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com \
       --recv-key 95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7 && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get clean
CMD ["/bin/bash"]
