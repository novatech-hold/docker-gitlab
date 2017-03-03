#
# GitLab Docker container
#
# Version 0.1

FROM sameersbn/gitlab:8.16.6
# FROM quay.io/sameersbn/gitlab:8.13.3
MAINTAINER Joseph Lutz <Joseph.Lutz@novatechweb.com>

# copy wrapper script
COPY ./wrapper.sh /

VOLUME ["/home/git/data"]

# start the entrypoint script
ENTRYPOINT ["/wrapper.sh"]
