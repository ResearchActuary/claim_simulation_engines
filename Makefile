BOOK = _book/claim_sim_engines.docx
SOURCE_RMD = intro.Rmd common_features.Rmd specific_examples.Rmd comparison.Rmd conclusion.Rmd

$(BOOK):$(SOURCE_RMD) _bookdown.yml _output.yml
	Rscript -e "bookdown::render_book('$<')"

all:$(BOOK)
    
clean:
	rm $(BOOK)
