all: http/img/harem.svg http/json/spec.json http/legend.html

.PHONY: all clean 

http/json/spec.json: data/harem.dot
	bin/mkspec data/harem.dot > http/json/spec.json

http/legend.html: data/harem.dot
	bin/mklegend data/harem.dot > http/legend.html

http/img/harem.svg: data/harem.dot
	dot -Tsvg data/harem.dot -o http/img/harem.svg

clean:
	git clean -Xfd
