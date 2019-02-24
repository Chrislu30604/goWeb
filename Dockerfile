FROM golang:1.11
MAINTAINER chrislu chrislu30604@gmail.com

# go ENV
ENV PATH $PATH:$GOPATH/bin

# Install beego and the bee dev tool
RUN go get github.com/astaxie/beego 
RUN go get github.com/beego/bee
# Install go-my-sql 
RUN go get github.com/go-sql-driver/mysql
# Expose the application on port 8090
EXPOSE 8045

# set the entry point of container
ENTRYPOINT /app/roboticsWeb
