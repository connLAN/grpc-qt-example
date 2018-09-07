QT -= gui
QT += concurrent

CONFIG += console
CONFIG -= app_bundle
LIBS += /usr/lib/libgrpc++.a /usr/lib/libgrpc.a  -lgpr -lcrypto -lssl -lz -lcares -lprotobuf -lprotoc 

DEFINES += QT_DEPRECATED_WARNINGS
TARGET = rpcClient
QMAKE_CXXFLAGS += -std=c++17

SRCDIR = "rpc_client_cpp"


SOURCES += \
  $$SRCDIR/helloworld_client.cpp \
  $$SRCDIR/helloworld.grpc.pb.cc \
  $$SRCDIR/helloworld.pb.cc \

HEADERS += \
  $$SRCDIR/helloworld.grpc.pb.h \
  $$SRCDIR/helloworld.pb.h \







