FILES := \
	latex/Makefile          \
	latex/cc/by-sa.pdf      \
	latex/latex.bib         \
	latex/latex.tex         \
	latex/mgates.sty        \
	latex/mgates-letter.sty \
	latex/sine.pdf          \

all: latex.pdf

tar: latex.tar.gz

latex.tar.gz: latex.pdf
	cd ..  &&  tar -H -zcvf latex/latex.tar.gz $(FILES)

latex.pdf: latex.tex
	pdflatex latex
