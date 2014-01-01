INFILES	= $(shell find . -name '*.dot')
OUTFILES	= $(INFILES:.dot=.png) public/js/spec.json

all: $(OUTFILES)

public/js/spec.json: data/harem.dot
	bin/mkspec data/harem.dot > public/spec.json

%.png: %.dot
	dot -Tpng $< -o $@

clean:
	git clean -Xfd
