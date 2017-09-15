FROM golang:1.8-onbuild


RUN mkdir -p /web
COPY web /web
RUN chmod g+r /web

EXPOSE 8080

CMD [ "go-wrapper", "run", "--port", "8080" ]

