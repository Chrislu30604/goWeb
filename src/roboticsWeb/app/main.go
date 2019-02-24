package main

const (
	PORT = "8047"
)

func main() {
	r := registerRoutes()
	r.Run(":" + PORT)
}
