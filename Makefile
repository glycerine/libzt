# Common makefile -- loads make rules for each platform

OSTYPE=$(shell uname -s)

BUILD=build/$(OSTYPE)
ZTO=zto

ifeq ($(OSTYPE),Darwin)
	include make-mac.mk
endif

ifeq ($(OSTYPE),Linux)
	include make-linux.mk
endif

ifeq ($(OSTYPE),FreeBSD)
	include make-bsd.mk
endif
ifeq ($(OSTYPE),OpenBSD)
	include make-bsd.mk
endif
