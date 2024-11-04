
all: index.html

clean:
	rm -f index.html

build: clean all

index.html: index.md ./template/template.html Makefile
	pandoc --toc -s --css ./css/reset.css --css ./css/index.css -i $< -o $@ --template=./template/template.html

.PHONY: all clean
