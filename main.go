package main

import (
	"fmt"
	"net/http"
	"os"

	"github.com/sirupsen/logrus"
)

var log = logrus.New()

func homePage(w http.ResponseWriter, r *http.Request) {
	log.WithFields(logrus.Fields{
		"page":   "home",
		"method": r.Method,
		"path":   r.URL.Path,
	}).Info("Home Page Accessed")
	fmt.Fprintf(w, "Welcome to the Golang Logging Demo!")
}

func infoPage(w http.ResponseWriter, r *http.Request) {
	log.WithFields(logrus.Fields{
		"page":   "info",
		"method": r.Method,
		"path":   r.URL.Path,
	}).Info("Info Page Accessed")
	fmt.Fprintf(w, "This is the info page.")
}

func errorPage(w http.ResponseWriter, r *http.Request) {
	log.WithFields(logrus.Fields{
		"page":   "error",
		"method": r.Method,
		"path":   r.URL.Path,
	}).Info("Error Page Accessed - Simulating Error")
	// Simulate an error
	if _, err := fmt.Fprintf(w, "An error occurred!"); err != nil {
		log.WithFields(logrus.Fields{
			"error": err,
		}).Error("Failed to write response")
	}
}
func registrationPage(w http.ResponseWriter, r *http.Request) {
	userName := "JohnDoe"
	email := "john.doe@barmail.com"
	password := "superSecretPassword123"

	log.WithFields(logrus.Fields{
		"page":     "registration",
		"method":   r.Method,
		"path":     r.URL.Path,
		"userName": userName,
		"email":    email,
		"password": password,
	}).Info("User Registration Page Accessed - Sensitive Info Logged")

	fmt.Fprintf(w, "Mock user registration completed.")
}

func paymentPage(w http.ResponseWriter, r *http.Request) {
	creditCardNumber := "1234-5678-9012-3456"
	ssn := "123-45-6789"
	user := "janedoe@foomail.com"
	transactionAmount := "$100.00"
	bankAccountNumber := "987654321"

	log.WithFields(logrus.Fields{
		"page":              "payment",
		"method":            r.Method,
		"path":              r.URL.Path,
		"creditCardNumber":  creditCardNumber,
		"ssn":               ssn,
		"user":              user,
		"transactionAmount": transactionAmount,
		"bankAccountNumber": bankAccountNumber,
	}).Info("Payment Page Accessed - Sensitive Info Logged")

	fmt.Fprintf(w, "Mock payment processed.")
}

func handleRequests() {
	http.HandleFunc("/", homePage)
	http.HandleFunc("/info", infoPage)
	http.HandleFunc("/error", errorPage)
	http.HandleFunc("/payment", paymentPage)
	http.HandleFunc("/registration", registrationPage)
	log.Info("Starting server on port 8080")
	if err := http.ListenAndServe(":8080", nil); err != nil {
		log.WithError(err).Fatal("Failed to start server")
	}
}

func main() {
	// Configure logrus
	log.Out = os.Stdout // Explicitly setting output to stdout
	log.Formatter = &logrus.JSONFormatter{}
	log.Level = logrus.InfoLevel

	log.Info("Starting Golang Logging Demo Server on port 8080")
	handleRequests()
}
