.PHONY: git dev-apply dev-destroy

.DEFAULT_GOAL := help

git:## git pull nd clean local terraform.tfstate
	git pull
	rm -f .terraform/terraform.tfstate

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST)

dev-apply: git ## terraform dev-apply
	terraform init -backend-config=env-dev/state.tfvars
	terraform apply -auto-approve -var-file=env-dev/main.tfvars

dev-destroy: git ## terraform dev-destroy
	terraform init -backend-config=env-dev/state.tfvars
	terraform destroy -auto-approve -var-file=env-dev/main.tfvars
