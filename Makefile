all: public/assets/img/harem.png public/spec.json public/legend.html

.PHONY: all clean 

public/spec.json: data/harem.dot
	bin/mkspec data/harem.dot > public/spec.json

public/legend.html: data/harem.dot
	bin/mklegend data/harem.dot > public/legend.html

public/assets/img/harem.png: data/harem.dot
	dot -Tpng data/harem.dot -o public/assets/img/harem.png

clean:
	git clean -Xfd
