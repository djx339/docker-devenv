FROM djx339/devenv:base
MAINTAINER Daniel D <djx339@gmail.com>

COPY id_rsa.pub /root/.ssh/authorized_keys
COPY id_rsa /root/.ssh/id_rsa
RUN chmod 700 /root/.ssh/ \
    && chmod 600 /root/.ssh/id_rsa \
    && chmod 600 /root/.ssh/authorized_keys

RUN apt-get update && apt-get install -y --no-install-recommends \
            software-properties-common \
    && apt-add-repository -y ppa:ansible/ansible \
    && apt-get update && apt-get install -y --no-install-recommends ansible
