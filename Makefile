CTEX=pdflatex
LTEX=songidx

TEXFILE=mybook


.phony: all

all: cv.pdf



cv.pdf: titleidx.sbx songs.sty
	$(CTEX) $(TEXFILE).tex
	rm -f $(TEXFILE).aux $(TEXFILE).log titleidx.sxd titleidx.sbx

titleidx.sbx: titleidx.sxd
	$(LTEX) titleidx.sxd titleidx.sbx

titleidx.sxd: $(TEXFILE).tex
	$(CTEX) $(TEXFILE).tex



clean:
	rm -f $(TEXFILE).aux $(TEXFILE).log titleidx.sxd titleidx.sbx
	rm -f $(TEXFILE).pdf
