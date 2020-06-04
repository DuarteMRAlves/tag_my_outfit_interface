all: install

sources:
	bash bin/grpc.sh

install: sources
	bash bin/install.sh

clean: clean_sources uninstall

clean_sources:
	rm -r outfit_tagging

uninstall:
	pip uninstall -y outfit-tagging-interface
