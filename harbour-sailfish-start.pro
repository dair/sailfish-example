# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = harbour-sailfish-start

QT += multimedia

CONFIG += sailfishapp

SOURCES += src/harbour-sailfish-start.cpp \
    src/mypage.cpp

OTHER_FILES += qml/harbour-sailfish-start.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    rpm/harbour-sailfish-start.changes.in \
    rpm/harbour-sailfish-start.spec \
    rpm/harbour-sailfish-start.yaml \
    translations/*.ts \
    harbour-sailfish-start.desktop \
    sound/1.mp3

SAILFISHAPP_ICONS = 86x86 108x108 128x128 256x256

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/harbour-sailfish-start-de.ts \
    translations/harbour-sailfish-start-ru.ts

DISTFILES += \
    icons/108x108/harbour-sailfish-start.png \
    icons/128x128/harbour-sailfish-start.png \
    icons/256x256/harbour-sailfish-start.png \
    icons/86x86/harbour-sailfish-start.png

HEADERS += \
    src/mypage.h

DEPLOYMENT_PATH = /usr/share/$${TARGET}

sound.files = sound
sound.path = $${DEPLOYMENT_PATH}
# data.path =

INSTALLS += sound
