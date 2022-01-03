all: build

dependenses-upgrade:
	go get -d -u -t ./...

build--spectator:
	CGO_ENABLED=0 GOOS=linux \
		go build \
		-a \
		-installsuffix cgo \
		-o dist/spectator \
		./cmd/spectator

build: build--spectator

clean--spectator:
	rm --force \
	./dist/spectator

clean: clean--spectator

rebuild: clean build

service--modules:
	go mod tidy
