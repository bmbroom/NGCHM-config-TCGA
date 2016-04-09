FROM busybox:latest
ADD 01-TCGA.d /etc/ngchm/conf.d/01-TCGA.d
VOLUME /etc/ngchm/conf.d/01-TCGA.d
ENTRYPOINT ["/bin/true"]
