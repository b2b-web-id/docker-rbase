FROM b2bwebid/debian:trixie
LABEL MAINTAINER="B2B.Web.ID Data Analytics Platform Labs"
RUN apt-get update && \
    apt-get install -y r-base && \
    Rscript -e 'install.packages(c("devtools","rig","dplyr"), ask=F)' && \
    apt-get clean
CMD ["/bin/bash"]
