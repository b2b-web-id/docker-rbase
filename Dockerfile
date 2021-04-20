FROM debian:buster
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
RUN apt-get update && \
    apt-get install -y gnupg2
<<<<<<< HEAD
RUN echo "deb http://cloud.r-project.org/bin/linux/debian buster-cran40/" \
       >> /etc/apt/sources.list && \
    apt-key adv --keyserver keys.gnupg.net \
       --recv-key E19F5F87128899B192B1A2C2AD5F960A256A04AF && \
    apt-get update && \
    apt-get install -y -t buster-cran40 r-base && \
    apt-get clean
CMD ["/bin/bash"]
