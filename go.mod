module github.com/lotgyero/spectator

go 1.17

replace (
	github.com/lotgyero/spectator/pkg/config => ./pkg/config
	github.com/lotgyero/spectator/pkg/core => ./pkg/core
	github.com/lotgyero/spectator/pkg/telegram => ./pkg/telegram
)

require (
	github.com/lotgyero/spectator/pkg/config v0.0.0-00010101000000-000000000000
	github.com/lotgyero/spectator/pkg/core v0.0.0-00010101000000-000000000000
	github.com/lotgyero/spectator/pkg/telegram v0.0.0-00010101000000-000000000000
)

require (
	github.com/go-telegram-bot-api/telegram-bot-api/v5 v5.5.1 // indirect
	github.com/google/uuid v1.3.0 // indirect
)
