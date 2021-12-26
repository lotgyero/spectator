package config

import (
	"os"
	"log"

	"github.com/google/uuid"
)

type Config string

const (
	TELEGRAM_TOKEN Config = "TELEGRAM_TOKEN"
)

var run_id string

func init(){
	generateRunID()
}

func generateRunID () {
	if (len(run_id)<1){
		run_id = uuid.New().String()
		log.Printf("CONFIG: UUID: %s", run_id)
	}
}

func GetRunID () string{
	return run_id
}

func GetVal (env Config) string{
	return os.Getenv(string(env))
}
