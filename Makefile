all: build

dependenses-upgrade:
	go get -d -u -t ./...

build: build--spectator

build--spectator:
	CGO_ENABLED=0 GOOS=linux \
		go build \
		-a \
		-installsuffix cgo \
		-o dist/spectator \
		./cmd/spectator

clean--spectator:
	rm --force \
	./dist/spectator

clean: clean--spectator

rebuild: clean build
