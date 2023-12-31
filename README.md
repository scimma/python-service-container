# python-service-base

This repository is used to build a base container image for SCIMMA services written in python.
This is intended to be fairly minimal, to support production services, and so few development and
debugging tools are included.

## Building

	make

## Release

Releases will normally be produced by an automated workflow.
Each release should be based on a tag with following the naming scheme `version-MAJOR.MINOR.PATCH`,
where `MAJOR`, `MINOR`, and `PATCH` are integers. 
A suitable tag can be created and a release generated by running the following:

	git tag version-MAJOR.MINOR.PATCH
	git push origin version-MAJOR.MINOR.PATCH

Existing releases can can be listed by running:

	aws ecr describe-images --repository-name scimma/python-service-base | jq '.imageDetails[].imageTags[]' | sort
