FROM golang:1.16-alpine3.14 as desafioGo
 
WORKDIR /go/src

COPY . /go/src/

RUN go build main.go

FROM scratch

WORKDIR /go/src

COPY --from=desafioGo /go/src/ .

CMD ["./main"]