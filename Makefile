.PHONY: all
all: clean dist

main.html:
	asciidoctor main.adoc

.PHONY: clean
clean:
	rm -rf ./main.html ./dist/

.PHONY: dist
dist: main.html
	mkdir dist
	cp ./main.html ./dist/index.html
