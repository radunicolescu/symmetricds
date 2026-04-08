#!/bin/sh

# Inject variables into the template
envsubst < /opt/symmetric-ds/engines/corp-000.properties.template > /opt/symmetric-ds/engines/corp-000.properties

echo "Engine file generated successfully."

# Start SymmetricDS
exec /opt/symmetric-ds/bin/sym
