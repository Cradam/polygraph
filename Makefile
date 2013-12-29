%.dot: ps png

ps: 
	dot -Tps harem.dot -o harem.ps

png:
	convert harem.ps harem.png
