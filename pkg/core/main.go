package core

import (
	"log"

	"github.com/lotgyero/spectator/pkg/config"
	// "github.com/lotgyero/spectator/pkg/telegram"
	// "github.com/lotgyero/spectator/pkg/slack"
	"github.com/lotgyero/spectator/pkg/discord"
)

func Run() {
	log.Printf("CORE: init, %s", config.GetRunID())
	// telegram.Run()
	// slack.Run()
	discord.Run()
}
