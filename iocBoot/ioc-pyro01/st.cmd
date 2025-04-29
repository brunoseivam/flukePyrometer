#!../../bin/linux-x86_64/flukePyrometer

< envPaths

epicsEnvSet("STREAM_PROTOCOL_PATH", ".:$(TOP)/proto")
epicsEnvSet("PREFIX", "PYRO:")
epicsEnvSet("PORT", "P0")

dbLoadDatabase("$(TOP)/dbd/flukePyrometer.dbd")
flukePyrometer_registerRecordDeviceDriver(pdbbase)

drvAsynIPPortConfigure("$(PORT)", "localhost:6363")
asynOctetSetInputEos("$(PORT)",0,"\r\n")
asynOctetSetOutputEos("$(PORT)",0,"\r\n")

dbLoadRecords("$(TOP)/db/flukePyrometer.db","P=$(PREFIX),R=,PORT=$(PORT)")
dbLoadRecords("$(ASYN)/db/asynRecord.db","P=$(PREFIX),R=asyn,PORT=$(PORT),ADDR=0,OMAX=32,IMAX=32")

iocInit()
