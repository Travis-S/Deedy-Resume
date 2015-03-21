SHELL := /bin/bash
# Will help with automated resume generation
# We use a variable called fontstyle in resume.xtx
# and sed find/replace to put the correct font style
# in its place. 

SOURCE := resume

target : $(resume).pdf

# Recompile the xtx document into a pdf
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