include ( ../../mythconfig.mak )
include ( ../../settings.pro )

TEMPLATE = app
CONFIG += thread
TARGET = mtd
target.path = $${PREFIX}/bin
INSTALLS += target

LIBS += -lmyth-$$LIBVERSION $$EXTRA_LIBS -lmythdvdnav-$$LIBVERSION

HEADERS += ../mythdvd/dbcheck.h logging.h mtd.h 
HEADERS += serversocket.h jobthread.h dvdprobe.h fileobs.h threadevents.h

SOURCES += main.cpp ../mythdvd/dbcheck.cpp logging.cpp mtd.cpp serversocket.cpp
SOURCES += jobthread.cpp dvdprobe.cpp fileobs.cpp threadevents.cpp

