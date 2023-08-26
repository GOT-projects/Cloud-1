TAGS =			UploadPlaybook \
				UploadEnv \
				UploadScript

BOOK = ./playbook.yaml
HOST = ./hosts
PERM = ./perm/cloud.pem

all:
	ansible-playbook -i $(HOST) $(BOOK)

Deploy:
	ansible-playbook -i $(HOST) $(BOOK) --tags Deploy -vvv > env_deploy
	sh ./get_intance_id.sh

${TAGS}:
	ansible-playbook -i $(HOST) $(BOOK) --tags $@ -vvv

DeployInstance: UploadPlaybook UploadEnv UploadScript Deploy

.PHONY: all $(TAGS) Deploy
