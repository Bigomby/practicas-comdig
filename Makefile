BASE=cookbook
OUTDIR=docs
MAIN=$(BASE).adoc

.PHONY: html
html: $(SOURCES) styles/$(CSS)
	asciidoctor $(MAIN) -a stylesheet=./styles/style.css --attribute tabsize=4 -o $(OUTDIR)/index.html

.PHONY: pdf
pdf: $(SOURCES) styles/$(CSS)
	asciidoctor-pdf $(MAIN) --attribute tabsize=4 -o $(OUTDIR)/$(BASE).pdf

.PHONY: clean
clean:
	-rm -rf $(OUTDIR)/*

print-%  : ; @echo $* = $($*)
