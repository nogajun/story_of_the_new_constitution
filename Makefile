
SOURCE:=atarashii_kenpo.md
REFERENCE_ODT:=reference/a6-template.odt

ODT=$(SOURCE:.md=.odt)
PDF=$(SOURCE:.md=.pdf)

PANDOC_OPTION=-f markdown+east_asian_line_breaks-implicit_figures --smart --standalone
ODT_OPTION=-t odt --reference-odt=$(REFERENCE_ODT)

all : $(ODT) $(PDF)

%.odt : %.md
	pandoc $(PANDOC_OPTION) $(ODT_OPTION) -o $@ $<

%.pdf : %.odt
	soffice --headless --convert-to pdf $<
	pdfsam-console -direction r2l -o . -overwrite -f $@ setviewer

.PHONY: clean ppi

clean:
	$(RM) $(ODT) $(PDF)

ppi:
	mogrify -density 150 -units PixelsPerInch img/*
