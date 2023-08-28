

DEPLOY_DIR = ./ansible
DEPLOY_DOCKER = ./Deploy

deploy_instance:
	@echo "Deploying instance"
	@make -C $(DEPLOY_DIR) DeployInstance
	@ansible-playbook -i ${DEPLOY_DOCKER}/hosts -f ${DEPLOY_DOCKER}/playbook.yaml

.PHONY: deploy_instance
