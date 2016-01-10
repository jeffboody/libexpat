TARGET   = libexpat.a
CLASSES  = xmlrole xmltok xmltok_impl
SOURCE   = $(CLASSES:%=%.c) xmlparse.c xmltok_ns.c
OBJECTS  = $(SOURCE:.c=.o)
HFILES   = $(CLASSES:%=%.h)
OPT      = -O2 -Wall
CFLAGS   = $(OPT) -I. -DHAVE_MEMMOVE
LDFLAGS  =
AR       = ar

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(AR) rcs $@ $(OBJECTS)

clean:
	rm -f $(OBJECTS) *~ \#*\# $(TARGET)

$(OBJECTS): $(HFILES)
