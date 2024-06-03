.PHONY: all clean serve docker-setup

COQDOC_AUTO=coqdoc.css

FILES=lesson_1 lesson_2
FILES_HTML=$(addsuffix .html,$(FILES))

all: $(FILES_HTML)

%.html: %.v %.glob jscoqdoc
	./jscoqdoc $<

%.glob: %.v
	npx jscoq sdk coqc -R . MyCourse $<

clean:
	rm -f *.vo *.vok .*.aux *.glob *.vos $(FILES_HTML) $(COQDOC_AUTO)

node_modules: package.json package-lock.json
	npm i

serve: node_modules coq-pkgs/my_course.coq-pkg
	./node_modules/.bin/http-server .

coq-pkgs/my_course.coq-pkg: $(FILES_HTML) docker-setup
	npx jscoq build . --top MyCourse --package $@
	cp -a coq-pkgs/* node_modules/jscoq/coq-pkgs/

SDK_VERSION=v8.17

docker-setup:
	docker pull jscoq/jscoq:$(SDK_VERSION)-sdk
	docker tag jscoq/jscoq:$(SDK_VERSION)-sdk jscoq:sdk
