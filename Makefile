.DEFAULT_GOAL := help

install: ## Install the project
	@echo Installing the command
	@sudo cp bin/ab.sh /usr/bin/ab
	@echo Install successful
	@echo Example: ab -n 2 http://google.com/
	@echo For more commands read the complete documentation: http://httpd.apache.org/docs/2.0/programs/ab.html

uninstall: ## Uninstall the project
	@echo Uninstalling the command
	@sudo rm -f /usr/bin/ab
	@echo Uninstall successful

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'