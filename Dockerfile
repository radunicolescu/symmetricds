FROM jumpmind/symmetricds:latest
# Copy your local engines folder into the container
# Copy only the specific engine file into the engines directory
COPY corp-000.properties /opt/symmetric-ds/engines/corp-000.properties

# Optional: Ensure the file has the correct permissions
USER root
RUN chmod 644 /opt/symmetric-ds/engines/corp-000.properties
