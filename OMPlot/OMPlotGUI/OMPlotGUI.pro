#-------------------------------------------------
#
# Project created by QtCreator 2011-02-01T16:47:11
#
#-------------------------------------------------

QT       += core gui

TARGET = OMPlot
TEMPLATE = app

SOURCES += main.cpp\
        plotwindow.cpp \
    ../../c_runtime/read_matlab4.c

HEADERS  +=\
plotwindow.h \
    ../../c_runtime/read_matlab4.h


win32 {
  LIBS += -L $$(OMDEV)/lib/qwt-6.0.0-mingw/lib \ 
        -lqwtd

  INCLUDEPATH += $$(OMDEV)/lib/qwt-6.0.0-mingw/include
} else {
  include(OMPlotGUI.config)
}

DESTDIR = ../bin