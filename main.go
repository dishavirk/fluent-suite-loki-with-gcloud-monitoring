package main

import (
	"fmt"
	"log"
	"net/http"
)

func homePage(w http.ResponseWriter, r *http.Request) {
	log.Println("Home Page Accessed")
	fmt.Fprintf(w, "Welcome to the Golang Logging Demo!")
}

func infoPage(w http.ResponseWriter, r *http.Request) {
	log.Println("Info Page Accessed")
	fmt.Fprintf(w, "This is the info page.")
}

func errorPage(w http.ResponseWriter, r *http.Request) {
	log.Println("Error Page Accessed - Simulating Error")
	// Simulate an error
	_, err := fmt.Fprintf(w, "An error occurred!")
	if err != nil {
		log.Printf("Failed to write response: %v", err)
	}
}

func handleRequests() {
	http.HandleFunc("/", homePage)
	http.HandleFunc("/info", infoPage)
	http.HandleFunc("/error", errorPage)
	log.Fatal(http.ListenAndServe(":8080", nil))
}

func main() {
	log.Println("Starting Golang Logging Demo Server on port 8080")
	handleRequests()
}
