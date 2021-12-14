OUTPUT := CyberPolicy.pdf
HTML_OUTPUT := CyberPolicy.html
# SOURCES := $(wildcard *.md)
POLICY_FOLDER := policies
SOURCES := $(wildcard $(POLICY_FOLDER)/*.md)

all: $(OUTPUT)

$(OUTPUT): $(SOURCES)
	pandoc -s policy.md $(SOURCES) glossary.md  -o $(OUTPUT)

$(HTML_OUTPUT): $(SOURCES)
	pandoc -s policy.md $(SOURCES) glossary.md -o $(HTML_OUTPUT)


.PHONY: clean

clean:
	rm -f $(OUTPUT)
