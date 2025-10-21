FROM golang:1.25-alpine
WORKDIR /app
COPY . .

RUN apk add --no-cache git build-base
RUN go build -o main .

EXPOSE 8080
CMD ["./main"]
