#!/bin/bash

sudo groupadd docker 2>/dev/null
sudo usermod -aG docker $USER
newgrp docker

