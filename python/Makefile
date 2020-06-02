all: install

sources:
	bash bin/grpc.sh

install:
	bash bin/install.sh

clean: clean_sources uninstall

clean_sources:
	rm -r fashion_contract

uninstall:
	pip uninstall -y fashion_contract
