LANGUAGES!=	ls *.ass | sed -e 's/[.]ass//'

all:	${LANGUAGES}

${LANGUAGES}:	${.TARGET}.mp4

.for L in ${LANGUAGES}
${L}.mp4:	in.mp4 ${L}.ass
	ffmpeg -i in.mp4 -vf "ass=${L}.ass" -c:a copy -y ${L}.mp4
.endfor

clean:
.for L in ${LANGUAGES}
	rm -f ${L}.mp4
.endfor

.PHONY:	all clean
