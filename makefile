all: serve

serve:
	bundle exec jekyll serve

install:
	@bundle config --local github.https true
	@bundle --path=.bundle/gems --binstubs=.bundle/.bin

