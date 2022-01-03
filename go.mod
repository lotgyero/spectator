module github.com/lotgyero/spectator

go 1.17

replace (
	github.com/lotgyero/spectator/config => ./config
	github.com/lotgyero/spectator/core => ./core
	github.com/lotgyero/spectator/discord => ./discord
	github.com/lotgyero/spectator/slack => ./slack
	github.com/lotgyero/spectator/telegram => ./telegram
)

require (
	github.com/bwmarrin/discordgo v0.23.3-0.20211228023845-29269347e820
	github.com/go-telegram-bot-api/telegram-bot-api/v5 v5.5.1
	github.com/google/uuid v1.3.0
)

require (
	github.com/gorilla/websocket v1.4.2 // indirect
	golang.org/x/crypto v0.0.0-20211215153901-e495a2d5b3d3 // indirect
	golang.org/x/sys v0.0.0-20211216021012-1d35b9e2eb4e // indirect
)
