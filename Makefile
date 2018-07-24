INSTALL=install
PREFIX?=/usr/local
MANDIR?=/man/man1

install:
	$(INSTALL) -Dm 755 wemux $(DESTDIR)$(PREFIX)/bin/wemux
	$(INSTALL) -Dm 644 man/wemux.1 $(DESTDIR)$(PREFIX)$(MANDIR)/wemux.1
	$(INSTALL) -Dm 644 wemux.conf.example $(DESTDIR)$(PREFIX)/share/doc/wemux/wemux.conf.example

uninstall:
	rm $(DESTDIR)$(PREFIX)/bin/wemux
	rm $(DESTDIR)$(PREFIX)$(MANDIR)/wemux.1
	rm $(DESTDIR)$(PREFIX)/share/doc/wemux/wemux.conf.example

.PHONY: uninstall
