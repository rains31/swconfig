ifndef CFLAGS
CFLAGS = -O2 -g -I /usr/include/libnl3/ -I /lib/modules/`uname -r`/build -I .
endif
LIBS=-lnl-3 -lnl-genl-3
all: swconfig

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $^

swconfig: cli.o swlib.o
	$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -f *~ *.o swconfig

install:
	install -D swconfig $(DESTDIR)$(PREFIX)/sbin/swconfig
