# lm-3.github.io/Makefile --- web page stuff

LM3_DOC ?= ../doc

HTMLSRC = cadr.html amber.html chinual.html \
	chinual2nd.html chinual4th.html chinual6th.html

.DEFAULT_GOAL: all 

.PHONY: all
all:
	(cd $(LM3_DOC); git pull)
	make -C $(LM3_DOC) all-html
	cp $(addprefix $(LM3_DOC)/, $(HTMLSRC)) .

.PHONY: clean
clean:
	@true

# lm-3.github.io/Makefile ends here.
