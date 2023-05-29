watch:
	@echo building...
	@ls tools/* lab.md style.css makefile | entr make build

build:
	@ruby ./tools/rss.rb
	@pandoc \
		--standalone \
		--embed-resource \
		--metadata title="Lab Notes" \
		--variable title="" \
		--from markdown+gfm_auto_identifiers \
		--lua-filter ./tools/anchor-links.lua \
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
