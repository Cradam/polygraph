INFILES	= $(shell find . -name '*.dot')
OUTFILES	= $(INFILES:.dot=.png) public/js/spec.json public/legend.html

all: $(OUTFILES)

public/js/spec.json: data/harem.dot
	bin/mkspec data/harem.dot > public/spec.json

public/legend.html: data/harem.dot
	bin/mklegend data/harem.dot > public/legend.html

%.png: %.dot
	dot -Tpng $< -o $@

clean:
	git clean -Xfd
