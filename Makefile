DEST = $(HOME)/.signature
SRC = signature.txt

all: update_sig

update_sig: $(DEST)

$(DEST): $(SRC)
	cp -f $< $@

upload:
	rsync -a --progress --verbose shlomif-sig-quotes "$${__HOMEPAGE_REMOTE_PATH}"/signature-quotes-moy/

