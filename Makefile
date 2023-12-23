all: build

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

rebuild: clean build

service--dependenses-upgrade:
	go get -d -u -t ./...
	go get -u -t ./...

service--dependenses-clean:
	go mod tidy

service--dependenses: service--dependenses-upgrade service--dependenses-clean

clean: clean--spectator

debug-run:
	@sh -c "'$(CURDIR)/scripts/debug-run.sh'"

debug-run-rebuild: rebuild
	@sh -c "'$(CURDIR)/scripts/debug-run.sh'"

migrate-up:
	@sh -c "'$(CURDIR)/scripts/migration-up.sh'"

migrate-down:
	@sh -c "'$(CURDIR)/scripts/migration-down.sh'"

migrate-create:
	@sh -c "'$(CURDIR)/scripts/migration-create.sh'"
