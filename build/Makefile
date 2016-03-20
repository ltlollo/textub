DOC = main.tex

all:
	@echo Compiling document...
	@latexmk -pdf -silent -pdflatex="pdflatex -interaction=nonstopmode" \
	    -use-make ${DOC}
