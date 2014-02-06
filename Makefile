FOPJAR = dist-bin/fop-1.1/build/fop.jar
PREFIX = /opt
PACKAGE = fop

all: $(FOPJAR)

$(FOPJAR):
	unset DISPLAY;\
	ant dist-bin

clean:
	ant clean

install:
	install -d $(DESTDIR)$(PREFIX)/$(PACKAGE)
	rsync -a dist-bin/fop-1.1/ $(DESTDIR)$(PREFIX)/$(PACKAGE)/

distclean: clean
	ant distclean
	rm -f lib/jai_codec.jar lib/jai_core.jar
