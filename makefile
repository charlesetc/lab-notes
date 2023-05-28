watch:
	@echo building...
	@ls rss.rb lab.md style.css makefile | entr make build

build:
	@ruby ./rss.rb
	@pandoc \
		--standalone \
		--embed-resource \
		--metadata title="Lab Notes" \
		--variable title="" \
		--from markdown \
		--to html \
		--css ./style.css \
		lab.md -o build/index.html
	@echo done

make push:
	git commit -am 'update: make push'
	git push

.PHONY: build
