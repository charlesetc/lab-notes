watch:
	@echo building...
	@ls lab.md style.css makefile | entr make build

build:
	pandoc \
		--standalone \
		--embed-resource \
		--metadata title="Lab Notes" \
		--variable title="" \
		--from markdown \
		--to html \
		--css ./style.css \
		lab.md -o build/index.html

.PHONY: build
