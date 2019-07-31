
all: clean build

clean:
	rm -rf nut_expoter

deps:
	dep ensure

build: deps
	go build

install:
	sudo cp nut_expoter /usr/local/bin
	sudo cp nut_expoter.service /etc/systemd/system/nut_exporter@.service
