# don't include LOCAL_PATH for submodules

include $(CLEAR_VARS)
LOCAL_MODULE    := expat
LOCAL_CFLAGS    := -Wall -DHAVE_MEMMOVE
LOCAL_SRC_FILES := libexpat/expat/lib/xmlrole.c     \
                   libexpat/expat/lib/xmltok.c      \
                   libexpat/expat/lib/xmltok_impl.c \
                   libexpat/expat/lib/xmlparse.c    \
                   libexpat/expat/lib/xmltok_ns.c

LOCAL_LDLIBS    := -Llibs/armeabi \
                   -llog

include $(BUILD_SHARED_LIBRARY)
