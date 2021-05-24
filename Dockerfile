FROM golang:1.15-buster as build

WORKDIR /go/src/app
ADD app /go/src/app
RUN go get -d -v
RUN CGO_ENABLED=0 go build -o /app -ldflags="-s -w" app.go

FROM alpine:3.10

RUN apk --update add ca-certificates

COPY --from=build /app /

ENTRYPOINT ["/app"]
