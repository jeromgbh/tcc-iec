all: tcc-iec.pdf

tcc-iec.pdf : tcc-iec.tex
	pdflatex tcc-iec
	bibtex tcc-iec
	pdflatex tcc-iec
	pdflatex tcc-iec --shell-escape tcc-iec
	
clean:
	rm -f core *.core *.log *.aux *.toc *.lo[fpta] *.blg *.bbl \
	*.ind *.ilg *.idx *.glo *.gls *.out *~ *.backup .log *.brf

distclean: clean
	rm -f *.dvi *.ps *.pdf *.synctex.gz *~
