FROM b2bwebid/debian:buster
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
RUN apt-get install -y r-base && \
    apt-get clean
CMD ["/bin/bash"]
