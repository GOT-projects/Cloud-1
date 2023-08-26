

DEPLOY_DIR = ./ansible

deploy_instance:
	@echo "Deploying instance"
	@make -C $(DEPLOY_DIR) DeployInstance

.PHONY: deploy_instance
