package config

import (
	"log"
	"os"

	"github.com/google/uuid"
)

type Config string

const (
	TELEGRAM_TOKEN Config = "TELEGRAM_TOKEN"
	DISCORD_TOKEN  Config = "DISCORD_TOKEN"
	SLACK_TOKEN    Config = "SLACK_TOKEN"
)

var run_id string

func init() {
	generateRunID()
}

func generateRunID() {
	if len(run_id) < 1 {
		run_id = uuid.New().String()
		log.Printf("CONFIG: UUID: %s", run_id)
	}
}

func GetRunID() string {
	return run_id
}

func GetVal(env Config) string {
	return os.Getenv(string(env))
}
