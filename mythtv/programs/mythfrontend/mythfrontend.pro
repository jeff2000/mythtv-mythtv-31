######################################################################
# Automatically generated by qmake (1.02a) Mon Jul 8 22:32:30 2002
######################################################################

TEMPLATE = app
CONFIG += thread
TARGET = mythfrontend
target.path = /usr/local/bin
INSTALLS = target

include ( ../../settings.pro )

setting.path = /usr/local/share/mythtv/
setting.files += theme.txt mysql.txt mainmenu.xml tvmenu.xml
setting.extra = ldconfig

INSTALLS += setting

INCLUDEPATH += ../../libs/libNuppelVideo ../../libs/libmythtv ../../libs

LIBS += -L../../libs/libmythtv -L../../libs/libNuppelVideo 
LIBS += -L../../libs/libavcodec -L../../libs/libmyth

LIBS += -lmythtv -lNuppelVideo -lavcodec -lmyth -lXv -lmp3lame 

TARGETDEPS  = ../../libs/libNuppelVideo/libNuppelVideo.a 
TARGETDEPS += ../../libs/libmythtv/libmythtv.a
TARGETDEPS += ../../libs/libavcodec/libavcodec.a

# Input
HEADERS += scheduler.h playbackbox.h deletebox.h programlistitem.h 
HEADERS += viewscheduled.h

SOURCES += main.cpp scheduler.cpp playbackbox.cpp deletebox.cpp 
SOURCES += programlistitem.cpp viewscheduled.cpp
