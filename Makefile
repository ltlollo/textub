DOCS = tex
BUILD = build
DOC = main.tex
OUT = out.pdf
AUTHOR = me
TITLE = title

.PHONY: all clean

all:
	@mkdir -p ${BUILD}
	@cat ${DOC} | TITLE=${TITLE} AUTHOR=${AUTHOR} templ > ${BUILD}/${DOC}
	@$(MAKE) -C ${BUILD} all
	@cp ${BUILD}/main.pdf ${OUT}

clean:
	$(RM) ${OUT}
	$(RM) ${BUILD}/*.fdb_latexmk
	$(RM) ${BUILD}/*.fls
	$(RM) ${BUILD}/*.pdf
	$(RM) ${BUILD}/*.toc
	$(RM) ${BUILD}/*.tex
	$(RM) ${BUILD}/*.aux
