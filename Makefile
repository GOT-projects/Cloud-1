

DEPLOY_DIR = ./ansible
DEPLOY_DOCKER = ./Deploy

deploy_instance:
	@echo "Deploying instance"
	@make -C $(DEPLOY_DIR) DeployInstance
	sleep 42
	@ansible-playbook -i ${DEPLOY_DOCKER}/hosts ${DEPLOY_DOCKER}/playbook.yaml
deploy_wordpress:
	@ansible-playbook -i ${DEPLOY_DOCKER}/hosts ${DEPLOY_DOCKER}/playbook.yaml

.PHONY: deploy_instance
