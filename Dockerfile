FROM debian:stretch
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
RUN apt update && \
    apt install -y gnupg2
ADD cran.list jranke.asc /root/
RUN apt-key add /root/jranke.asc && \
    mv /root/cran.list /etc/apt/sources.list.d/ && \
    apt-get update && \
    apt-get install -y r-base && \
    apt-get clean
CMD ["/bin/bash"]
