FROM jodogne/orthanc:latest

COPY orthanc.json /etc/orthanc/orthanc.json

# Comprobar si existe el directorio plugins antes de copiarlo
RUN mkdir -p /usr/share/orthanc/plugins/
# Use a shell command to handle the copy and suppress errors if no files exist
RUN if [ -d "plugins" ] && [ "$(ls -A plugins 2>/dev/null)" ]; then \
	cp -a plugins/. /usr/share/orthanc/plugins/; \
	else echo "No plugins to copy"; fi