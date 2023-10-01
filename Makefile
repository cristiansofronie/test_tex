.PHONY: all clean watch

all: hello.pdf

hello.pdf: hello.tex
	pdflatex --interaction batchmode hello.tex

watch:
	pdflatex --interaction batchmode hello.tex
	xdg-open hello.pdf
	echo hello.tex | entr pdflatex --interaction batchmode hello.tex

clean:
	rm -f hello.pdf hello.aux hello.log
