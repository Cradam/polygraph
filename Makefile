INFILES	= $(shell find . -name '*.dot')
OUTFILES	= $(INFILES:.dot=.png) public/js/spec.js

all: $(OUTFILES)

public/js/spec.js: data/harem.dot
	bin/mkspec 'data/harem.dot' > public/js/spec.js

%.png: %.dot
	dot -Tpng $< -o $@

clean:
	git clean -Xfd
