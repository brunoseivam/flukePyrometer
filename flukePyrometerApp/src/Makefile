TOP=../..

include $(TOP)/configure/CONFIG

PROD_IOC = flukePyrometer
DBD += $(PROD_IOC).dbd

$(PROD_IOC)_DBD += base.dbd
$(PROD_IOC)_DBD += asyn.dbd
$(PROD_IOC)_DBD += calc.dbd
$(PROD_IOC)_DBD += stream.dbd

$(PROD_IOC)_LIBS += asyn
$(PROD_IOC)_LIBS += calc
$(PROD_IOC)_LIBS += stream

$(PROD_IOC)_SRCS += $(PROD_IOC)_registerRecordDeviceDriver.cpp
$(PROD_IOC)_SRCS += $(PROD_IOC)Main.cpp

$(PROD_IOC)_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES
