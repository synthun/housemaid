.POSIX:

BINDIR = $(HOME)/.local/bin
CONFDIR = $(HOME)/.config/housemaid

install:
	mkdir -p $(BINDIR)
	mkdir -p $(CONFDIR)
	cp -f housemaid.lua $(BINDIR)/housemaid
	cp -f config.lua $(CONFDIR)/config.lua
	chmod +x $(BINDIR)/housemaid

uninstall:
	rm -f $(CONFDIR)/housemaid
	rm -f $(BINDIR)/houesmaid

.PHONY: install uninstall
