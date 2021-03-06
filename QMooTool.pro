QT       += core gui #xml

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += 3rd/QCodeEditor/include
INCLUDEPATH += 3rd/rapidjson/include
INCLUDEPATH += 3rd/rapidxml-1.13

# 定义下面的宏，解析的时候就不会抛出异常
# 必须实现 void rapidxml::parse_error_handler(const char *what, void *where)
# 函数来处理rapidxml解析时候的错误
# DEFINES += RAPIDXML_NO_EXCEPTIONS

SOURCES += \
    3rd/QCodeEditor/src/internal/QCXXHighlighter.cpp \
    3rd/QCodeEditor/src/internal/QCodeEditor.cpp \
    3rd/QCodeEditor/src/internal/QFramedTextAttribute.cpp \
    3rd/QCodeEditor/src/internal/QGLSLCompleter.cpp \
    3rd/QCodeEditor/src/internal/QGLSLHighlighter.cpp \
    3rd/QCodeEditor/src/internal/QJSONHighlighter.cpp \
    3rd/QCodeEditor/src/internal/QLanguage.cpp \
    3rd/QCodeEditor/src/internal/QLineNumberArea.cpp \
    3rd/QCodeEditor/src/internal/QLuaCompleter.cpp \
    3rd/QCodeEditor/src/internal/QLuaHighlighter.cpp \
    3rd/QCodeEditor/src/internal/QPythonCompleter.cpp \
    3rd/QCodeEditor/src/internal/QPythonHighlighter.cpp \
    3rd/QCodeEditor/src/internal/QStyleSyntaxHighlighter.cpp \
    3rd/QCodeEditor/src/internal/QSyntaxStyle.cpp \
    3rd/QCodeEditor/src/internal/QXMLHighlighter.cpp \
    3rd/QJsonModel/qjsonmodel.cpp \
    code/jsoneditwidget.cpp \
    code/main.cpp \
    code/mainwidget.cpp \
    code/popcodedialog.cpp \
    code/timeconvertwidget.cpp \
    code/xmleditwidget.cpp \
    code/portinfoview.cpp

HEADERS += \
    3rd/QCodeEditor/include/QCXXHighlighter \
    3rd/QCodeEditor/include/QCodeEditor \
    3rd/QCodeEditor/include/QFramedTextAttribute \
    3rd/QCodeEditor/include/QGLSLCompleter \
    3rd/QCodeEditor/include/QGLSLHighlighter \
    3rd/QCodeEditor/include/QHighlightBlockRule \
    3rd/QCodeEditor/include/QHighlightRule \
    3rd/QCodeEditor/include/QJSONHighlighter \
    3rd/QCodeEditor/include/QLanguage \
    3rd/QCodeEditor/include/QLineNumberArea \
    3rd/QCodeEditor/include/QLuaCompleter \
    3rd/QCodeEditor/include/QLuaHighlighter \
    3rd/QCodeEditor/include/QPythonCompleter \
    3rd/QCodeEditor/include/QPythonHighlighter \
    3rd/QCodeEditor/include/QStyleSyntaxHighlighter \
    3rd/QCodeEditor/include/QSyntaxStyle \
    3rd/QCodeEditor/include/QXMLHighlighter \
    3rd/QCodeEditor/include/internal/QCXXHighlighter.hpp \
    3rd/QCodeEditor/include/internal/QCodeEditor.hpp \
    3rd/QCodeEditor/include/internal/QFramedTextAttribute.hpp \
    3rd/QCodeEditor/include/internal/QGLSLCompleter.hpp \
    3rd/QCodeEditor/include/internal/QGLSLHighlighter.hpp \
    3rd/QCodeEditor/include/internal/QHighlightBlockRule.hpp \
    3rd/QCodeEditor/include/internal/QHighlightRule.hpp \
    3rd/QCodeEditor/include/internal/QJSONHighlighter.hpp \
    3rd/QCodeEditor/include/internal/QLanguage.hpp \
    3rd/QCodeEditor/include/internal/QLineNumberArea.hpp \
    3rd/QCodeEditor/include/internal/QLuaCompleter.hpp \
    3rd/QCodeEditor/include/internal/QLuaHighlighter.hpp \
    3rd/QCodeEditor/include/internal/QPythonCompleter.hpp \
    3rd/QCodeEditor/include/internal/QPythonHighlighter.hpp \
    3rd/QCodeEditor/include/internal/QStyleSyntaxHighlighter.hpp \
    3rd/QCodeEditor/include/internal/QSyntaxStyle.hpp \
    3rd/QCodeEditor/include/internal/QXMLHighlighter.hpp \
    3rd/QJsonModel/qjsonmodel.h \
    code/jsoneditwidget.hpp \
    code/mainwidget.hpp \
    code/popcodedialog.hpp \
    code/timeconvertwidget.hpp \
    code/xmleditwidget.hpp \
    code/portinfoview.hpp

FORMS += \
    ui/jsoneditwidget.ui \
    ui/mainwidget.ui \
    ui/popcodedialog.ui \
    ui/portinfoview.ui \
    ui/timeconvertwidget.ui \
    ui/xmleditwidget.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    3rd/QCodeEditor/resources/qcodeeditor_resources.qrc
