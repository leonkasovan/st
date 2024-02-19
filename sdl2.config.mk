#
#	Simple Terminal config using SDL 2.0 instead of SDL 1.2
#		based on RG350 ver https://github.com/jamesofarrell/st-sdl
#

# st version
VERSION = 0.3

# Customize below to fit your system

# paths
# PREFIX = /opt/miyoo
# MANPREFIX = ${PREFIX}/share/man
# CROSS_COMPILE ?= ${PREFIX}/bin/arm-miyoo-linux-uclibcgnueabi-

# compiler and linker
CC = ${CROSS_COMPILE}gcc
SYSROOT = $(shell ${CC} --print-sysroot)

# includes and libs
INCS = -I. -D_GNU_SOURCE=1 -D_REENTRANT -DSDL_2
LIBS = -lc -lSDL2 -lpthread -Wl,-Bstatic,-lutil,-Bdynamic

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" -fPIC
CFLAGS += -Os -Wall ${INCS} ${CPPFLAGS}
LDFLAGS += ${CFLAGS} ${LIBS} -lSDL2 -s
