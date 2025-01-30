.PHONY: build

build: 
	@go build -v -o apiserver ./cmd/apiserver && ./apiserver

.PHONY: test
test:
	go test -v -race -timeout 30s ./...

.DEFAULT_GOAL := build