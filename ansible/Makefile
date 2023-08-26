TAGS =			UploadPlaybook \
				UploadEnv \
				Deploy \
				UploadScript

BOOK = ./playbook.yaml
HOST = ./hosts
PERM = ./perm/cloud.pem

all:
	ansible-playbook -i $(HOST) $(BOOK)

${TAGS}:
	ansible-playbook -i $(HOST) $(BOOK) --tags $@

DeployInstance: UploadPlaybook UploadEnv UploadScript Deploy

.PHONY: all $(TAGS)
