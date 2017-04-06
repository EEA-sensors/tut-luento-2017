OPTS = -z -Ppdf -Pcmz -Pamz -Poutline -G0 -j0 -f -D 600 -Z -Pdownload35

DEPS = 

all: tut-lecture-2017.pdf tut-handout-2017.pdf

force:
	rm -f *.pdf
	make

tut-handout-2017.tex: tut-lecture-2017.tex
	sed 's/,presentation/,handout/' < $< > $@


#######################
#  pdflatex
#######################

%.pdf: %.tex 
	echo "Running pdflatex... "
	pdflatex $<
	latex_count=5 ; \
        while egrep -s 'Rerun (LaTeX|to get cross-references right|to get citations correct)' $(subst tex,log,$<) && \
            [ $$latex_count -gt 0 ] ;\
            do \
              echo "Rerunning latex...." ;\
              pdflatex $< ;\
              latex_count=`expr $$latex_count - 1` ;\
            done

clean:
	rm -f *.log *.aux *.tmp *.out *.snm *.toc *.nav *~ *.pdf


