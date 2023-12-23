package core

import (
	"log"

	"github.com/lotgyero/spectator/config"
	// "github.com/lotgyero/spectator/telegram"
	// "github.com/lotgyero/spectator/slack"
	"github.com/lotgyero/spectator/discord"
)

func Run() {
	log.Printf("CORE: init, %s", config.GetRunID())
	// telegram.Run()
	// slack.Run()
	discord.Run()
}
