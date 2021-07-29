FROM b2bwebid/debian:buster
MAINTAINER B2B.Web.ID Data Analytics Platform Labs
RUN apt-get install -y bzip2-doc ca-certificates fontconfig icu-devtools \
                       krb5-locales && \
    apt-get clean
RUN apt-get install -y r-base && \
    apt-get clean
CMD ["/bin/bash"]
