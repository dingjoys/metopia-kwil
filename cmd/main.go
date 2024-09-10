package main

import (
	"fmt"
	"os"

	"github.com/kwilteam/kwil-db/cmd/kwild/root"
	"github.com/Metopian/metopia-kwil/extensions"
)

func init() {
	extensions.Register()
}

func main() {
	if err := root.RootCmd().Execute(); err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
	os.Exit(0)
}
