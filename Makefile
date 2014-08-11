DEST = $(HOME)/.signature
SRC = signature.txt

all: update_sig

update_sig: $(DEST)

$(DEST): $(SRC)
	cp -f $< $@

upload:
	rsync -a --progress --verbose shlomif-sig-quotes.txt Makefile signature.txt gen-shlomif-at-iglu-sig "$${__HOMEPAGE_REMOTE_PATH}"/signature-quotes-moy/

