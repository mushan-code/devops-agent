COMMIT := $(shell git rev-parse --short HEAD)
VERSION := dev-$(shell git describe --tags $(shell git rev-list --tags --max-count=1))
REGISTRY := crpi-nzqlx13x1djeqccn.cn-beijing.personal.cr.aliyuncs.com/myregistry-amd64

build-base:
        docker buildx build base --platform linux/amd64 -f base/Dockerfile -t $(REGISTRY)/kubesphere-builder-base:$(VERSION) --push
