
SHELL := /bin/bash

.PHONY: plan apply

plan:
	@terraform plan -out planfile

apply: planfile
	@terraform apply
	rm planfile
