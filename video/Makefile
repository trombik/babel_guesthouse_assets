SUBDIRS+=	Empty_Angkor_Wat

all:
.for D in ${SUBDIRS}
	make -m .../Mk -C ${D} all
.endfor

clean:
.for D in ${SUBDIRS}
	make -m .../Mk -C ${D} clean
.endfor

.PHONY: all clean
