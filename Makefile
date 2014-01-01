INFILES := $(shell find . -name '*.dot')
OUTFILES := $(INFILES:.dot=.png) public/spec.json public/legend.html

all: $(OUTFILES)

.PHONY: all clean 

public/spec.json: data/harem.dot
	bin/mkspec data/harem.dot > public/spec.json

public/legend.html: data/harem.dot
	bin/mklegend data/harem.dot > public/legend.html

%.png: %.dot
	dot -Tpng $< -o $@

clean:
	git clean -Xfd
