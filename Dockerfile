FROM jodogne/orthanc

COPY orthanc.json /etc/orthanc/orthanc.json
COPY plugins/ /usr/share/orthanc/plugins/