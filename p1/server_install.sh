#!/bin/bash

# Install K3s in server mode
export INSTALL_K3S_EXEC="--write-kubeconfig-mode=644 --tls-san=$(hostname) --bind-address=192.168.56.110 --advertise-address=192.168.56.110 --node-ip=192.168.56.110"

curl -sfL https://get.k3s.io | sh -

# Save the token to the synced folder
if sudo cat /var/lib/rancher/k3s/server/node-token > /vagrant/token.env; then
    echo "TOKEN SAUVEGARDE"
else
    echo "TOKEN NON SAUVEGARDE"
fi

echo "Setup serveur fini."
