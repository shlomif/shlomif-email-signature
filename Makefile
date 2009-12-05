DEST = $(HOME)/.signature
SRC = signature.txt

all: update_sig

update_sig: $(DEST)

$(DEST): $(SRC)
	cp -f $< $@

