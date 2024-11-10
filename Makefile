build: clean index.html

clean:
	rm -f index.html

index.html: index.md ./template/template.html Makefile
	pandoc --toc -s --css ./css/reset.css --css ./css/index.css -i $< -o $@ --template=./template/template.html
