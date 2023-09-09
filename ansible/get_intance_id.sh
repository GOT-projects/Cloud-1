#!/bin/bash

echo "Get ip address and instance id"
ID_INSTANCE=$(grep "instance_id.*i-" env_deploy | tail -n 1 | awk -F': ' '{print $2}' | sed 's/[\\",\]//g' | tr -d '", ')
IP_ADDRESS=$(grep 'public_ip' env_deploy | grep -vwE 'public_ip_address|assign_public_ip' | tail -n 1 | awk -F'"' '{print $5}' | sed 's/.$//')

echo "save ip address and instance id"
echo $IP_ADDRESS
cat <<EOF > .env_deploy
IP_ADDRESS=$IP_ADDRESS
ID_INSTANCE=$ID_INSTANCE
EOF

echo Create hosts ansible new instance
cat <<EOF > ../Deploy/hosts
[NewInstance]
ubuntu@$IP_ADDRESS ansible_ssh_extra_args='-o StrictHostKeyChecking=no' ansible_ssh_private_key_file=./ansible/perm/cloud.pem ansible_ssh_user=ubuntu
EOF
