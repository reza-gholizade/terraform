.PHONY: apply 

apply: validate
	terraform apply

validate: fmt
	terraform validate

init: fmt
	terraform init

fmt:
	terraform fmt