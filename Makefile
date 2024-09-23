.PHONY: clean tectonic tectonic-debug latexmk latexmk-debug

clean:
	-@rm -rf build/*
	-@rm *.pdf
	-@mv *.acn *.acr *alg *aux *blg *fdb_latexmk *fls *log *bbl *bcf *glg *glo *gls *ist *lof *lot *toc *run.xml *slg *slo *sls ./build/
tectonic:
	mkdir -p build
	@echo "Compiling template.tex with tectonic (silent mode)..."
	@tectonic -X compile template.tex --keep-intermediates > /dev/null 2>&1
	@echo "Running makeglossaries..."
	@makeglossaries template > /dev/null 2>&1
	@echo "Compiling template.tex again with tectonic..."
	@tectonic -X compile template.tex > /dev/null 2>&1
	@echo "Moving generated files to build directory..."
	@mv *acn *acr *alg *aux *bbl *bcf *glg *glo *gls *ist *lof *lot *toc *run.xml *slg *slo template.sls ./build/

tectonic-debug:
	mkdir -p build
	@echo "Compiling template.tex with tectonic (debug mode)..."
	@tectonic -X compile template.tex --keep-intermediates
	@echo "Running makeglossaries..."
	@makeglossaries template
	@echo "Compiling template.tex again with tectonic..."
	@tectonic -X compile template.tex
	@echo "Moving generated files to build directory..."
	@mv *acn *acr *alg *aux *bbl *bcf *glg *glo *gls *ist *lof *lot *toc *run.xml *slg *slo *sls ./build/

latexmk:
	mkdir -p build
	@echo "Compiling template.tex with latexmk..."
	@latexmk -shell-escape -file-line-error -pdf template > /dev/null 2>&1
	@echo "Moving generated files to build directory..."
	@mv *acn *acr *alg *aux *bbl *bcf *blg *fdb_latexmk *fls *glg *glo *gls *ist *lof *log *lot *run.xml *toc *slg *slo *sls ./build/

latexmk-debug:
	mkdir -p build
	@echo "Compiling template.tex with latexmk (debug mode)..."
	@latexmk -shell-escape -file-line-error -pdf template
	@echo "Moving generated files to build directory..."
	@mv *acn *acr *alg *aux *bbl *bcf *blg *fdb_latexmk *fls *glg *glo *gls *ist *lof *log *lot *run.xml *toc *slg *slo template.sls ./build/


publish:
	mkdir -p build
	@echo "Compiling template.tex with latexmk..."
	@latexmk -shell-escape -file-line-error -pdf template > /dev/null 2>&1
	@echo "Removing front and back cover..."
	@pdftk template.pdf cat 2-r2 output template_trimmed.pdf
	@echo "Converting PDF to PS..."
	@pdf2ps  template_trimmed.pdf template_ps.ps > /dev/null 2>&1
	@echo "Converting PS to PDF/A..."
	@gs -dPDFA -dBATCH -dNOPAUSE -dNOOUTERSAVE -dUseCIEColor -sProcessColorModel=DeviceCMYK -sDEVICE=pdfwrite -sPDFACompatibilityPolicy=1 -sOutputFile=template_pdfa.pdf template_ps.ps
	@echo "Moving generated files to build directory..."
	@mv *acn *acr *alg *aux *bbl *bcf *blg *fdb_latexmk *fls *glg *glo *gls *ist *lof *log *lot *run.xml *toc *slg *slo *.sls build/
	@mv template_pdfa.pdf Sabir_Mouhieddine.pdf
	@mv *.ps template_trimmed.pdf build/
