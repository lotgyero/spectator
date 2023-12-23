module github.com/lotgyero/spectator

go 1.17

replace (
	github.com/lotgyero/spectator/config => ./config
	github.com/lotgyero/spectator/core => ./core
	github.com/lotgyero/spectator/discord => ./discord
	github.com/lotgyero/spectator/telegram => ./telegram
)

require (
	github.com/bwmarrin/discordgo v0.27.1
	github.com/go-telegram-bot-api/telegram-bot-api/v5 v5.5.1
	github.com/google/uuid v1.5.0
)

require (
	github.com/gorilla/websocket v1.5.1 // indirect
	golang.org/x/crypto v0.17.0 // indirect
	golang.org/x/net v0.19.0 // indirect
	golang.org/x/sys v0.15.0 // indirect
)
