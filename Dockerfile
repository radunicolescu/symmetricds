FROM jumpmind/symmetricds:latest

USER root

# Alpine uses 'apk' instead of 'apt-get'
# 'gettext' contains the envsubst utility
RUN apk add --no-cache gettext

# Copy the template and entrypoint
COPY cloud-000.properties.template /opt/symmetric-ds/engines/
COPY entrypoint.sh /entrypoint.sh

# Ensure script is executable
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
