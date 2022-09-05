.PHONY: all clean serve

FILES=lesson_1 lesson_2

all: $(addsuffix .html,$(FILES))

%.html: %.v %.glob
	./jscoqdoc $<

%.glob: %.v
	coqc $<

clean:
	rm -f *.vo *.vok .*.aux *.glob *.vos

node_modules: package.json package-lock.json
	npm i

serve: node_modules
	./node_modules/.bin/http-server .
