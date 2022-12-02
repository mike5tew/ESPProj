package main

import (
	"espdata.co.uk/packages/controller"
	"espdata.co.uk/packages/model"
)

func main() {
	model.Init()
	controller.Start()
}
