BINDIR=/usr/bin
MANDIR=/usr/share/man
CONFDIR=/etc
VERSION=1.1

all:
	@echo make install          to install the software
	@echo make install-config   to install example configuration
	@echo make uninstall        to remove the software and configuration
	@echo make uninstall-config to remove the configuration

install:
	if test ! -d $(DESTDIR)/$(BINDIR) ; then mkdir -p $(DESTDIR)/$(BINDIR) ; fi
	install -m 755 ruptime $(DESTDIR)/$(BINDIR)/
#	if test ! -d $(MANDIR)/man1 ; then mkdir -p $(MANDIR)/man1; fi
#	install -c -m 644 ruptime.1.gz $(MANDIR)/man1/

install-config:
	if test ! -d $(DESTDIR)/$(CONFDIR) ; then mkdir -p $(DESTDIR)/$(CONFDIR) ; fi
	install -m 600 ruptime.conf $(DESTDIR)/etc
	install -m 600 ruptime.key $(DESTDIR)/etc

uninstall:
	rm -f $(DESTDIR)/$(BINDIR)/ruptime
#	rm -f $(MANDIR)/man1/ruptime.1.gz

uninstall-config:
	rm -f $(DESTDIR)/etc/ruptime.conf
	rm -f $(DESTDIR)/etc/ruptime.key
