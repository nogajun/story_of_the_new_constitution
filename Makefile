
SOURCE:=atarashii_kenpo.md
REFERENCE_ODT:=reference/a6-template.odt

ODT=$(SOURCE:.md=.odt)
PDF=$(SOURCE:.md=.pdf)

PANDOC_OPTION=-f markdown+east_asian_line_breaks-implicit_figures+smart --standalone
ODT_OPTION=-t odt --reference-doc=$(REFERENCE_ODT)

all : $(ODT) $(PDF)

%.odt : %.md
	pandoc $(PANDOC_OPTION) $(ODT_OPTION) -o $@ $<

%.pdf : %.odt
	soffice --headless --convert-to pdf $<
	sejda-console setviewerpreferences -f $@ -o . --overwrite --direction r2l

.PHONY: clean ppi

clean:
	$(RM) $(ODT) $(PDF)

ppi:
	mogrify -density 150 -units PixelsPerInch img/*
