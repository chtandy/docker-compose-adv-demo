ARG BASE_IMAGE
FROM ${BASE_IMAGE}
ARG ANSIBLE_VERSION
RUN echo "######### install ansible ##########" \
  && apt-get update && apt-get install --assume-yes software-properties-common  \
  && apt-add-repository ${INS_ANSIBLE} \
  && apt-get install --assume-yes ansible-${ANSIBLE_VERSION} \
  && rm -rf /var/lib/apt/lists/* && apt-get clean

