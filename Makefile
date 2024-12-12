all: build

.PHONY: all


build--spectator:
	CGO_ENABLED=0 GOOS=linux \
		go build \
		-a \
		-installsuffix cgo \
		-o dist/spectator \
		./cmd/spectator

build: build--spectator

rebuild: clean build

.PHONY: build--spectator build rebuild



service--dependenses-upgrade:
	go get -d -u -t ./...
	go get -u -t ./...

service--dependenses-clean:
	go mod tidy

service--dependenses: service--dependenses-upgrade service--dependenses-clean


.PHONY: service--dependenses-upgrade service--dependenses-clean service--dependenses



clean--spectator:
	rm --force \
	./dist/spectator

clean: clean--spectator

.PHONY: clean--spectator clean


debug-run:
	@sh -c "'$(CURDIR)/scripts/debug-run.sh'"

debug-run-rebuild: rebuild
	@sh -c "'$(CURDIR)/scripts/debug-run.sh'"

.PHONY: debug-run-rebuild debug-run



migrate-up:
	@sh -c "'$(CURDIR)/scripts/migration-up.sh'"

migrate-down:
	@sh -c "'$(CURDIR)/scripts/migration-down.sh'"

migrate-create:
	@sh -c "'$(CURDIR)/scripts/migration-create.sh'"

.PHONY: migrate-create migrate-up migrate-down
