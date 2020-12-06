FROM bitnami/minideb:buster
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
RUN apt-get update && \
    apt-get install -y gnupg2
RUN apt-get install -y r-base && \
    apt-get clean
CMD ["/bin/bash"]
