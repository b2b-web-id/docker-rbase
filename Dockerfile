FROM debian:jessie
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
RUN apt-get update && \
    apt-get install -y r-base && \
    apt-get clean
CMD ["/bin/bash"]
