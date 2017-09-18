all: serve

site:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve --config _config.yml,_config_dev.yml

install:
	@bundle config --local github.https true
	@bundle --path=.bundle/gems --binstubs=.bundle/.bin
