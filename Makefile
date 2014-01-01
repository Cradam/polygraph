all: public/assets/img/harem.svg public/spec.json public/legend.html

.PHONY: all clean 

public/spec.json: data/harem.dot
	bin/mkspec data/harem.dot > public/spec.json

public/legend.html: data/harem.dot
	bin/mklegend data/harem.dot > public/legend.html

public/assets/img/harem.svg: data/harem.dot
	dot -Tsvg data/harem.dot -o public/assets/img/harem.svg

clean:
	git clean -Xfd
