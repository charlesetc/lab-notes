watch: open
	@echo building...
	@ls tools/* lab.md style.css makefile | entr make build

build:
	@cp ./style.css ./build
	@ruby ./tools/rss.rb
	@pandoc \
		--standalone \
		--metadata title="Lab Notes" \
		--variable title="" \
		--from markdown+gfm_auto_identifiers \
		--lua-filter ./tools/anchor-links.lua \
		--highlight-style monochrome \
		--to html \
		--css ./style.css \
		lab.md -o build/index.html
	@echo done

make push: build
	git commit -am 'update: make push'
	git push

open:
	open ./build/index.html

.PHONY: build
