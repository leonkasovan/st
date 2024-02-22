#
#	Simple Terminal config for RG353P Recalbox
#		based on RG350 ver https://github.com/jamesofarrell/st-sdl
#

# st version
VERSION = 0.3

# Customize below to fit your system

# compiler and linker
CC = /home/ark/recalbox-rg353x/output/host/bin/aarch64-buildroot-linux-gnu-gcc
SYSROOT = $(shell ${CC} --print-sysroot)

# includes and libs
INCS = -I. -I${SYSROOT}/usr/include/SDL -D_GNU_SOURCE=1 -D_REENTRANT -DRG353P
LIBS = -lc -L${SYSROOT}/usr/lib -lSDL -lpthread -Wl,-Bstatic,-lutil,-Bdynamic

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\"
CFLAGS += -Os -Wall ${INCS} ${CPPFLAGS}
LDFLAGS += ${CFLAGS} ${LIBS} -lSDL -s
