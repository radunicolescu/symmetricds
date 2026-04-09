#!/bin/sh

# Inject variables into the template
envsubst < /opt/symmetric-ds/engines/000.properties.template > /opt/symmetric-ds/engines/000.properties

echo "Engine file generated successfully."

# Start SymmetricDS
exec /opt/symmetric-ds/bin/sym
