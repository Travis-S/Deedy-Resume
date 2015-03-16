SHELL := /bin/bash

# Will help with automated paper generation
# The way make works is to detect when some files have been updated, and then update the files which depend
# on those files. To call make on this file, use make -f paper.mk
# This command will only build things if things have been updated.
# To force make to regenerate everything, regardless
# of whether it has been updated, use make -B -f paper.mk

SOURCE := resume

target : $(resume).pdf

# Recompile the tex document into a pdf
$(SOUCRE).pdf : $(SOURCE).xtx
	xelatex $(SOURCE).xtx

clean:
	rm *.log *.aux *.out

openfont:
	sed -i .xtx 's/fontstyle/openfont/g' resume.xtx #changing the fontstyle variable
	touch $(SOURCE).xtx
	make target
	make clean
	sed -i .xtx 's/openfont/fontstyle/g' resume.xtx #changing it back
	rm $(SOURCE).xtx.xtx

macfont:
	sed -i .xtx 's/fontstyle/macfont/g' resume.xtx #changing the fontstyle variable
	touch $(SOURCE).xtx
	make target
	make clean
	sed -i .xtx 's/macfont/fontstyle/g' resume.xtx #changing it back