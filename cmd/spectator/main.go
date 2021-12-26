package main

import (
	// "fmt"
	"os"

	// "github.com/lotgyero/spectator/pkg/config"
	"github.com/lotgyero/spectator/pkg/core"
	"github.com/lotgyero/spectator/pkg/telegram"
)

func main(){
	// fmt.Println(config.GetVal(config.TELEGRAM_TOKEN))
	core.Run()
	telegram.Run()
	os.Exit(0)
}
