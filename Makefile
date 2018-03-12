all: help

help: ## ヘルプ表示
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

upgrade: ## ライブラリ 最新にアップグレード
	@carthage update --platform ios --use-ssh

update: ## 固定したバージョンにアップデート
	@carthage bootstrap --platform ios --use-ssh
