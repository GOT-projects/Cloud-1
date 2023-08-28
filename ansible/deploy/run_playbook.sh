#!/bin/bash

export $(cat /root/.env | xargs)

 ansible-playbook /root/deploy.yaml -vvv \
   --extra-vars "v_instance=$v_instance" \
   --extra-vars "v_key_name=$v_key_name" \
   --extra-vars "v_aws_access_key=$v_aws_access_key" \
   --extra-vars "v_aws_secret_key=$v_aws_secret_key" \
   --extra-vars "v_instance_type=$v_instance_type" \
   --extra-vars "v_image_id=$v_image_id" \
   --extra-vars "v_region=$v_region" \
   --extra-vars "v_security_group=$v_security_group"
