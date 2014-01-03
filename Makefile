all: http/img/harem.svg http/json/spec.json http/legend.html

.PHONY: all clean 

http/json/spec.json: share/harem.dot
	bin/mkspec share/harem.dot > http/json/spec.json

http/legend.html: share/harem.dot
	bin/mklegend share/harem.dot > http/legend.html

http/img/harem.svg: share/harem.dot
	dot -Tsvg share/harem.dot -o http/img/harem.svg

clean:
	git clean -Xfd
