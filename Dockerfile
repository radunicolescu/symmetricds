FROM jumpmind/symmetricds:latest

USER root

# 1. Install gettext (contains envsubst)
# SymmetricDS image is Debian-based, so we use apt
RUN apt-get update && apt-get install -y gettext-base && rm -rf /var/lib/apt/lists/*

# 2. Copy the template and the entrypoint script
COPY corp-000.properties.template /opt/symmetric-ds/engines/
COPY entrypoint.sh /entrypoint.sh

# 3. Make the script executable
RUN chmod +x /entrypoint.sh

# 4. Use our script as the starting command
ENTRYPOINT ["/entrypoint.sh"]
