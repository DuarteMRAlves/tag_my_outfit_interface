all: install

tools:
	pip install grpcio-tools

sources: tools
	bash bin/grpc.sh

install: sources
	bash bin/install.sh

clean: clean_sources uninstall

clean_tools:
	pip uninstall -y grpcio-tools

clean_sources:
	rm -r outfit_tagging

uninstall:
	pip uninstall -y outfit-tagging-interface
