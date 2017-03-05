IMAGE_NAME := andreierandom/dev-erlang
EXECUTABLE := dev-erlang
INSTALL_PATH := /usr/local/bin


install: 
	cp $(EXECUTABLE) $(INSTALL_PATH)/

uninstall:
	rm $(INSTALL_PATH)/$(EXECUTABLE)

test-image:
	docker build --tag $(IMAGE_NAME):test .

test-clean:
	docker image rm $(IMAGE_NAME):test

test-install: 
	cp $(EXECUTABLE)-test $(INSTALL_PATH)/

test-uninstall:
	rm $(INSTALL_PATH)/$(EXECUTABLE)-test


