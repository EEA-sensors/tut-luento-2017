OPTS = -z -Ppdf -Pcmz -Pamz -Poutline -G0 -j0 -f -D 600 -Z -Pdownload35

DEPS = 

all: spde-lecture.pdf spde-handout.pdf

force:
	rm -f *.pdf
	make

spde-handout.tex: spde-lecture.tex
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


