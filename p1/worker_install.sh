#!/bin/bash

# Installation de K3s sur le worker
if export INSTALL_K3S_EXEC="agent --server https://192.168.56.110:6443 -t $(cat /vagrant/token.env) --node-ip=192.168.56.111"; then
        echo "INSTALLATION DE K3S AVEC TOKEN OK"
else
        echo "ECHEC DE L'INSTALLATION"
fi

# Installation de K3s en mode agent
curl -sfL https://get.k3s.io | sh -

