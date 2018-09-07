QT -= gui
QT += concurrent

CONFIG += console
CONFIG -= app_bundle

DEFINES += QT_DEPRECATED_WARNINGS

LIBS += /usr/lib/libgrpc++.a /usr/lib/libgrpc.a  -lgpr -lcrypto -lssl -lz -lcares -lprotobuf -lprotoc 

SRCDIR = "rpc_server"
TARGET= rpcServer
TEMPLET= app

SOURCES += \
  $$SRCDIR/main.cpp \
  $$SRCDIR/helloworld_server.cpp \
  $$SRCDIR/helloworld.grpc.pb.cc \
  $$SRCDIR/helloworld.pb.cc \

HEADERS += \
  $$SRCDIR/helloworld.grpc.pb.h \
  $$SRCDIR/helloworld.pb.h \
  $$SRCDIR/helloworld_server.h \


