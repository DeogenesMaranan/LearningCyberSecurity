#!/bin/bash

# Function to print usage
usage() {
    echo "Usage: $0 <Connection_Name>"
    exit 1
}

# Check if the connection name is provided
if [ -z "$1" ]; then
    usage
fi

CONNECTION_NAME="$1"

# Change the DNS settings using nmcli
echo "Changing DNS settings for '$CONNECTION_NAME' to use Google's public DNS..."
if sudo nmcli connection modify "$CONNECTION_NAME" ipv4.dns "8.8.8.8 8.8.4.4"; then
    echo "Successfully updated DNS servers."
else
    echo "Failed to update DNS servers."
    exit 1
fi

echo "Configuring the connection to ignore auto DNS..."
if sudo nmcli connection modify "$CONNECTION_NAME" ipv4.ignore-auto-dns yes; then
    echo "Successfully configured to ignore auto DNS."
else
    echo "Failed to configure to ignore auto DNS."
    exit 1
fi

# Restart the network connection
echo "Restarting the network connection..."
if sudo nmcli connection down "$CONNECTION_NAME" && sudo nmcli connection up "$CONNECTION_NAME"; then
    echo "Network connection restarted successfully."
else
    echo "Failed to restart the network connection."
    exit 1
fi

# Verify DNS configuration
echo "Verifying new DNS settings for '$CONNECTION_NAME'..."
DNS_SETTINGS=$(nmcli device show | grep IP4.DNS)
if echo "$DNS_SETTINGS" | grep -q "8.8.8.8"; then
    echo "DNS settings updated successfully:"
    echo "$DNS_SETTINGS"
else
    echo "Failed to update DNS settings. Current settings are:"
    echo "$DNS_SETTINGS"
    exit 1
fi
