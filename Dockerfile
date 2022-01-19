FROM centos:7

RUN yum -y install epel-release && \
    yum -y update && \
    yum -y install openssh-client ansible git curl wget jq nano sshpass python-pip && \
    python -m pip install --upgrade pip==20.3.4 && \
    python -m pip install pywinrm && \
    ansible-galaxy collection install ansible.windows
