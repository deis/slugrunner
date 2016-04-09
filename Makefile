SHORT_NAME := slugrunner

export GO15VENDOREXPERIMENT=1

IMAGE_PREFIX ?= deis

include versioning.mk

all: build docker-build docker-push

bootstrap:
	@echo Nothing to do.

docker-build:
	docker build --rm -t ${IMAGE} rootfs
	docker tag -f ${IMAGE} ${MUTABLE_IMAGE}

deploy: docker-build docker-push kube-pod

kube-pod: kube-service
	kubectl create -f ${POD}

kube-secrets:
	- kubectl -s http://172.17.8.102:8080 create -f ${SEC}

secrets:
	perl -pi -e "s|access-key-id: .+|access-key-id: ${key}|g" ${SEC}
	perl -pi -e "s|access-secret-key: .+|access-secret-key: ${secret}|g" ${SEC}
	echo ${key} ${secret}

kube-service: kube-secrets
	- kubectl create -f ${SVC}
	- kubectl create -f manifests/deis-minio-secretUser.yaml

kube-clean:
	- kubectl delete rc deis-${SHORT_NAME}-rc

kube-mc:
	kubectl create -f manifests/deis-mc-pod.yaml

mc:
	docker build -t ${DEIS_REGISTRY}/deis/minio-mc:latest mc
	docker push ${DEIS_REGISTRY}/deis/minio-mc:latest
	perl -pi -e "s|image: [a-z0-9.:]+\/|image: ${DEIS_REGISTRY}/|g" manifests/deis-mc-pod.yaml

test:
	@echo "Implement functional tests in _tests directory"

.PHONY: all bootstrap build docker-compile kube-up kube-down deploy mc kube-mc test
