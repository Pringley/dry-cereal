OUTPUT = document.pdf

CONTENT = content.markdown
HEADER = header.latex

PANDOC = pandoc
FLAGS = --smart --standalone --number-sections --toc

.PHONY: clean

$(OUTPUT): $(CONTENT) $(HEADER) $(STYLE)
	$(PANDOC) $(FLAGS) $(CONTENT) -H $(HEADER) -o $(OUTPUT)

clean:
	rm -rf $(OUTPUT)
