#!/bin/bash

# Swap variables in the template and create the actual engine file
# We use 'envsubst' which is a standard Linux utility
envsubst < /opt/symmetric-ds/engines/corp-000.properties.template > /opt/symmetric-ds/engines/corp-000.properties

echo "Engine file generated. Starting SymmetricDS..."

# Start SymmetricDS (this is the original command the image uses)
exec /opt/symmetric-ds/bin/sym
