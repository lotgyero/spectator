module github.com/lotgyero/spectator

go 1.17

replace (
	github.com/lotgyero/spectator/pkg/config => ./pkg/config
	github.com/lotgyero/spectator/pkg/core => ./pkg/core
	github.com/lotgyero/spectator/pkg/discord => ./pkg/discord
	github.com/lotgyero/spectator/pkg/slack => ./pkg/slack
	github.com/lotgyero/spectator/pkg/telegram => ./pkg/telegram
)

require github.com/lotgyero/spectator/pkg/core v0.0.0-20211226191250-90bb4d19dc55

require (
	github.com/bwmarrin/discordgo v0.23.3-0.20211228023845-29269347e820 // indirect
	github.com/go-telegram-bot-api/telegram-bot-api/v5 v5.5.1 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/gorilla/websocket v1.4.2 // indirect
	github.com/lotgyero/spectator/pkg/config v0.0.0-20211226191250-90bb4d19dc55 // indirect
	github.com/lotgyero/spectator/pkg/discord v0.0.0-00010101000000-000000000000 // indirect
	github.com/lotgyero/spectator/pkg/slack v0.0.0-00010101000000-000000000000 // indirect
	github.com/lotgyero/spectator/pkg/telegram v0.0.0-20211226191250-90bb4d19dc55 // indirect
	golang.org/x/crypto v0.0.0-20211215153901-e495a2d5b3d3 // indirect
	golang.org/x/sys v0.0.0-20211216021012-1d35b9e2eb4e // indirect
)
