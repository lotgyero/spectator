package discord

import (
	"log"
	"os"
	"os/signal"
	"syscall"

	"github.com/bwmarrin/discordgo"

	spectator_config "github.com/lotgyero/spectator/pkg/config"
)

var (
	discordToken string
)

func init() {
	log.Printf("DISCORD: init")
	discordToken = "Bot " + spectator_config.GetVal(spectator_config.DISCORD_TOKEN)
	log.Printf("DISCORD discordToken: %s", discordToken)
}

func Run() {
	dg, err := discordgo.New(discordToken)
	if err != nil {
		log.Panic("DISCORD ERROR ", err)
		return
	}

	dg.AddHandler(func(s *discordgo.Session, i *discordgo.Ready) {
		log.Println("DISCORD: bot up!")
	})

	dg.AddHandler(messageCreate)

	dg.Identify.Intents = discordgo.IntentsGuildMessages

	err = dg.Open()
	if err != nil {
		log.Panic("DISCORD ERROR", err)
		return
	}

	log.Print("DISCORD running")

	sc := make(chan os.Signal, 1)
	signal.Notify(sc, syscall.SIGINT, syscall.SIGTERM, os.Interrupt)
	<-sc
	dg.Close()

}

func messageCreate(s *discordgo.Session, m *discordgo.MessageCreate) {
	log.Println("DISCORD: handler messageCreate")
	log.Printf("DISCORD: message.Content: %s", m.Content)
	log.Printf("DISCORD: message.Author.ID:  %s", m.Author.ID)
	if m.Author.ID == s.State.User.ID {
		return
	}
	if m.Content == "ping" {
		s.ChannelMessageSend(m.ChannelID, "Pong!")
	}
	if m.Content == "pong" {
		s.ChannelMessageSend(m.ChannelID, "Ping!")
	}
}
