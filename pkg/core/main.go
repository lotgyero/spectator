package core

import (
	"log"

	"github.com/lotgyero/spectator/pkg/config"
	"github.com/lotgyero/spectator/pkg/telegram"
)

func Run (){
	log.Printf("CORE: init, %s", config.GetRunID())
	telegram.Run()
}
