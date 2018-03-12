FROM debian:stretch
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
COPY sources.list /etc/apt/
COPY cran.list /etc/apt/sources.list.d/
RUN apt-get update && \
    apt-get install -y gnupg2 && \
    apt-key adv --keyserver keys.gnupg.net \
       --recv-key E19F5F87128899B192B1A2C2AD5F960A256A04AF && \
    apt-get update && \
    apt-get install -y r-base && \
    apt-get clean
CMD ["/bin/bash"]
