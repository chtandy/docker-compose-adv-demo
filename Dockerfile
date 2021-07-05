ARG BASE_IMAGE
FROM ${BASE_IMAGE}
ARG ANSIBLE_VERSION
RUN echo "######### install ansible ##########" \
  && apt-get update && apt-get install --assume-yes software-properties-common  \
  && apt-add-repository ppa:ansible/ansible-${ANSIBLE_VERSION} \
  && apt-get install --assume-yes ansible \
  && rm -rf /var/lib/apt/lists/* && apt-get clean
