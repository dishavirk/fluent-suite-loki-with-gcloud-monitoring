FROM golang:1.19 as builder

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -o golang-logging-demo .

EXPOSE 8080

CMD ["./golang-logging-demo"]
