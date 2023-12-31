fmt:
	go fmt ./...
build:
	go build -o bin/atest-store-s3 .
test:
	go test ./... -cover -v -coverprofile=coverage.out
	go tool cover -func=coverage.out
build-image:
	docker build .
init-env: hd
	hd i cli/cli
	gh extension install linuxsuren/gh-dev
