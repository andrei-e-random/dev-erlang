SOURCES := $(shell pwd)
IMAGE_NAME := andreierandom/dev-erlang
EXECUTABLE := dev-erlang
INSTALL_PATH := /usr/local/bin

image:
	docker build --tag $(IMAGE_NAME) .

install: 
	ln -s $(SOURCES)/$(EXECUTBALE) $(INSTALL_PATH)/$(EXECUTABLE)

uninstall:
	rm $(INSTALL_PATH)/$(EXECUTABLE)

update: 
	docker pull $(IMAGE_NAME)

clean:
	docker image rm $(IMAGE_NAME)

