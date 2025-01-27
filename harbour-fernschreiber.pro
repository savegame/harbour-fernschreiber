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
TARGET = harbour-fernschreiber

CONFIG += sailfishapp sailfishapp_i18n

PKGCONFIG += nemonotifications-qt5 zlib

QT += core dbus sql multimedia positioning

DEFINES += QT_STATICPLUGIN

SOURCES += src/harbour-fernschreiber.cpp \
    src/appsettings.cpp \
    src/chatpermissionfiltermodel.cpp \
    src/chatlistmodel.cpp \
    src/chatmodel.cpp \
    src/contactsmodel.cpp \
    src/dbusadaptor.cpp \
    src/dbusinterface.cpp \
    src/emojisearchworker.cpp \
    src/fernschreiberutils.cpp \
    src/knownusersmodel.cpp \
    src/mceinterface.cpp \
    src/namedaction.cpp \
    src/notificationmanager.cpp \
    src/processlauncher.cpp \
    src/stickermanager.cpp \
    src/tdlibfile.cpp \
    src/tdlibreceiver.cpp \
    src/tdlibwrapper.cpp \
    src/textfiltermodel.cpp \
    src/tgsplugin.cpp

DISTFILES += qml/harbour-fernschreiber.qml \
    qml/components/AudioPreview.qml \
    qml/components/BackgroundImage.qml \
    qml/components/ChatListViewItem.qml \
    qml/components/DocumentPreview.qml \
    qml/components/GamePreview.qml \
    qml/components/ImagePreview.qml \
    qml/components/InformationEditArea.qml \
    qml/components/InformationTextItem.qml \
    qml/components/InReplyToRow.qml \
    qml/components/InlineQuery.qml \
    qml/components/LocationPreview.qml \
    qml/components/MessageListViewItem.qml \
    qml/components/MessageListViewItemSimple.qml \
    qml/components/MessageOverlayFlickable.qml \
    qml/components/MessageViaLabel.qml \
    qml/components/MultilineEmojiLabel.qml \
    qml/components/PinnedMessageItem.qml \
    qml/components/PollPreview.qml \
    qml/components/PressEffect.qml \
    qml/components/ProfilePictureList.qml \
    qml/components/ReplyMarkupButtons.qml \
    qml/components/StickerPicker.qml \
    qml/components/PhotoTextsListItem.qml \
    qml/components/StickerSetOverlay.qml \
    qml/components/TDLibImage.qml \
    qml/components/TDLibMinithumbnail.qml \
    qml/components/TDLibPhoto.qml \
    qml/components/TDLibThumbnail.qml \
    qml/components/VoiceNoteOverlay.qml \
    qml/components/chatInformationPage/ChatInformationPageContent.qml \
    qml/components/chatInformationPage/ChatInformationProfilePicture.qml \
    qml/components/chatInformationPage/ChatInformationTabItemBase.qml \
    qml/components/chatInformationPage/ChatInformationTabItemDebug.qml \
    qml/components/chatInformationPage/ChatInformationTabItemMembersGroups.qml \
    qml/components/chatInformationPage/ChatInformationTabItemSettings.qml \
    qml/components/chatInformationPage/ChatInformationTabView.qml \
    qml/components/chatInformationPage/EditGroupChatPermissionsColumn.qml \
    qml/components/chatInformationPage/EditSuperGroupSlowModeColumn.qml \
    qml/components/inlineQueryResults/InlineQueryResult.qml \
    qml/components/inlineQueryResults/InlineQueryResultAnimation.qml \
    qml/components/inlineQueryResults/InlineQueryResultArticle.qml \
    qml/components/inlineQueryResults/InlineQueryResultAudio.qml \
    qml/components/inlineQueryResults/InlineQueryResultContact.qml \
    qml/components/inlineQueryResults/InlineQueryResultDefaultBase.qml \
    qml/components/inlineQueryResults/InlineQueryResultDocument.qml \
    qml/components/inlineQueryResults/InlineQueryResultGame.qml \
    qml/components/inlineQueryResults/InlineQueryResultLocation.qml \
    qml/components/inlineQueryResults/InlineQueryResultPhoto.qml \
    qml/components/inlineQueryResults/InlineQueryResultSticker.qml \
    qml/components/inlineQueryResults/InlineQueryResultVenue.qml \
    qml/components/inlineQueryResults/InlineQueryResultVideo.qml \
    qml/components/inlineQueryResults/InlineQueryResultVoiceNote.qml \
    qml/components/messageContent/MessageAnimatedEmoji.qml \
    qml/components/messageContent/MessageAnimation.qml \
    qml/components/messageContent/MessageAudio.qml \
    qml/components/messageContent/MessageContentBase.qml \
    qml/components/messageContent/MessageContentFileInfoBase.qml \
    qml/components/messageContent/MessageDocument.qml \
    qml/components/messageContent/MessageGame.qml \
    qml/components/messageContent/MessageLocation.qml \
    qml/components/messageContent/MessagePhoto.qml \
    qml/components/messageContent/MessagePoll.qml \
    qml/components/messageContent/MessageSticker.qml \
    qml/components/messageContent/MessageVenue.qml \
    qml/components/messageContent/MessageVideoNote.qml \
    qml/components/messageContent/MessageVideo.qml \
    qml/components/messageContent/MessageVoiceNote.qml \
    qml/components/messageContent/SponsoredMessage.qml \
    qml/components/messageContent/WebPagePreview.qml \
    qml/components/settingsPage/Accordion.qml \
    qml/components/settingsPage/AccordionItem.qml \
    qml/components/settingsPage/ResponsiveGrid.qml \
    qml/components/settingsPage/SettingsAppearance.qml \
    qml/components/settingsPage/SettingsBehavior.qml \
    qml/components/settingsPage/SettingsPrivacy.qml \
    qml/components/settingsPage/SettingsSession.qml \
    qml/components/settingsPage/SettingsStorage.qml \
    qml/components/settingsPage/SettingsUserProfile.qml \
    qml/js/debug.js \
    qml/js/functions.js \
    qml/pages/ChatInformationPage.qml \
    qml/pages/ChatPage.qml \
    qml/pages/ChatSelectionPage.qml \
    qml/pages/CoverPage.qml \
    qml/pages/DebugPage.qml \
    qml/pages/InitializationPage.qml \
    qml/pages/NewChatPage.qml \
    qml/pages/OverviewPage.qml \
    qml/pages/AboutPage.qml \
    qml/pages/PollCreationPage.qml \
    qml/pages/PollResultsPage.qml \
    qml/pages/SearchChatsPage.qml \
    qml/pages/SettingsPage.qml \
    qml/pages/VideoPage.qml \
    rpm/harbour-fernschreiber.changes \
    rpm/harbour-fernschreiber.spec \
    rpm/harbour-fernschreiber.yaml \
    translations/*.ts \
    harbour-fernschreiber.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172 256x256

TRANSLATIONS += translations/harbour-fernschreiber-de.ts \
                translations/harbour-fernschreiber-es.ts \
                translations/harbour-fernschreiber-fi.ts \
                translations/harbour-fernschreiber-fr.ts \
                translations/harbour-fernschreiber-hu.ts \
                translations/harbour-fernschreiber-it.ts \
                translations/harbour-fernschreiber-pl.ts \
                translations/harbour-fernschreiber-ru.ts \
                translations/harbour-fernschreiber-sv.ts \
                translations/harbour-fernschreiber-sk.ts \
                translations/harbour-fernschreiber-en.ts \
                translations/harbour-fernschreiber-zh_CN.ts

equals(QT_ARCH, arm) {
    message(Building ARM)
    TARGET_ARCHITECTURE = armv7hl
}
equals(QT_ARCH, i386) {
    message(Building i486)
    TARGET_ARCHITECTURE = i486
}
equals(QT_ARCH, arm64){
    message(Building aarch64)
    TARGET_ARCHITECTURE = aarch64
}

INCLUDEPATH += $$PWD/tdlib/include
DEPENDPATH += $$PWD/tdlib/include
LIBS += -L$$PWD/tdlib/$${TARGET_ARCHITECTURE}/lib/ -ltdjson
telegram.files = $$PWD/tdlib/$${TARGET_ARCHITECTURE}/lib
telegram.path = /usr/share/$${TARGET}

gui.files = qml
gui.path = /usr/share/$${TARGET}

images.files = images
images.path = /usr/share/$${TARGET}

ICONPATH = /usr/share/icons/hicolor

86.png.path = $${ICONPATH}/86x86/apps/
86.png.files += icons/86x86/harbour-fernschreiber.png

108.png.path = $${ICONPATH}/108x108/apps/
108.png.files += icons/108x108/harbour-fernschreiber.png

128.png.path = $${ICONPATH}/128x128/apps/
128.png.files += icons/128x128/harbour-fernschreiber.png

172.png.path = $${ICONPATH}/172x172/apps/
172.png.files += icons/172x172/harbour-fernschreiber.png

256.png.path = $${ICONPATH}/256x256/apps/
256.png.files += icons/256x256/harbour-fernschreiber.png

fernschreiber.desktop.path = /usr/share/applications/
fernschreiber.desktop.files = harbour-fernschreiber.desktop

database.files = db
database.path = /usr/share/$${TARGET}

INSTALLS += telegram 86.png 108.png 128.png 172.png 256.png \
            fernschreiber.desktop gui images database

HEADERS += \
    src/appsettings.h \
    src/chatpermissionfiltermodel.h \
    src/chatlistmodel.h \
    src/chatmodel.h \
    src/contactsmodel.h \
    src/dbusadaptor.h \
    src/dbusinterface.h \
    src/debuglog.h \
    src/debuglogjs.h \
    src/emojisearchworker.h \
    src/fernschreiberutils.h \
    src/knownusersmodel.h \
    src/mceinterface.h \
    src/namedaction.h \
    src/notificationmanager.h \
    src/processlauncher.h \
    src/stickermanager.h \
    src/tdlibfile.h \
    src/tdlibreceiver.h \
    src/tdlibsecrets.h \
    src/tdlibwrapper.h \
    src/textfiltermodel.h \
    src/tgsplugin.h

# https://github.com/Samsung/rlottie.git

RLOTTIE_CONFIG = $${PWD}/rlottie/src/vector/config.h
PRE_TARGETDEPS += $${RLOTTIE_CONFIG}
QMAKE_EXTRA_TARGETS += rlottie_config

rlottie_config.target = $${RLOTTIE_CONFIG}
rlottie_config.commands = touch $${RLOTTIE_CONFIG} # Empty config is fine

DEFINES += LOTTIE_THREAD_SUPPORT

INCLUDEPATH += \
    rlottie/inc \
    rlottie/src/vector \
    rlottie/src/vector/freetype

SOURCES += \
    rlottie/src/lottie/lottieanimation.cpp \
    rlottie/src/lottie/lottieitem.cpp \
    rlottie/src/lottie/lottieitem_capi.cpp \
    rlottie/src/lottie/lottiekeypath.cpp \
    rlottie/src/lottie/lottieloader.cpp \
    rlottie/src/lottie/lottiemodel.cpp \
    rlottie/src/lottie/lottieparser.cpp

SOURCES += \
    rlottie/src/vector/freetype/v_ft_math.cpp \
    rlottie/src/vector/freetype/v_ft_raster.cpp \
    rlottie/src/vector/freetype/v_ft_stroker.cpp \
    rlottie/src/vector/stb/stb_image.cpp \
    rlottie/src/vector/varenaalloc.cpp \
    rlottie/src/vector/vbezier.cpp \
    rlottie/src/vector/vbitmap.cpp \
    rlottie/src/vector/vbrush.cpp \
    rlottie/src/vector/vdasher.cpp \
    rlottie/src/vector/vdrawable.cpp \
    rlottie/src/vector/vdrawhelper.cpp \
    rlottie/src/vector/vdrawhelper_common.cpp \
    rlottie/src/vector/vdrawhelper_neon.cpp \
    rlottie/src/vector/vdrawhelper_sse2.cpp \
    rlottie/src/vector/vmatrix.cpp \
    rlottie/src/vector/vimageloader.cpp \
    rlottie/src/vector/vinterpolator.cpp \
    rlottie/src/vector/vpainter.cpp \
    rlottie/src/vector/vpath.cpp \
    rlottie/src/vector/vpathmesure.cpp \
    rlottie/src/vector/vraster.cpp \
    rlottie/src/vector/vrle.cpp

NEON = $$system(g++ -dM -E -x c++ - < /dev/null | grep __ARM_NEON__)
SSE2 = $$system(g++ -dM -E -x c++ - < /dev/null | grep __SSE2__)

!isEmpty(NEON) {
    message(Using NEON render functions)
    SOURCES += rlottie/src/vector/pixman/pixman-arm-neon-asm.S
} else {
    !isEmpty(SSE2) {
        message(Using SSE2 render functions)
        SOURCES += rlottie/src/vector/vdrawhelper_sse2.cpp
    } else {
        message(Using default render functions)
    }
}
