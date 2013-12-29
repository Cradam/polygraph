INFILES 	= $(shell find . -name '*.dot')
OUTFILES 	= $(INFILES:.dot=.png)

all: $(OUTFILES)

%.png: %.dot
	dot -Tpng $< -o $@

clean:
	git clean -Xfd
