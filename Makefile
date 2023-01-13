.POSIX: 

PREFIX = /usr/local
BINDIR = $(PREFIX)/bin

install: housemaid
	mkdir -p $(BINDIR)
	cp -f housemaid $(BINDIR)/housemaid

uninstall:
	rm -rf $(BINDIR)/housemaid
