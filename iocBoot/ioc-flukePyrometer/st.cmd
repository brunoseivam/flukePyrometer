#!../../bin/linux-x86_64/flukePyrometer

< envPaths

dbLoadDatabase("$(TOP)/dbd/flukePyrometer.dbd")
flukePyrometer_registerRecordDeviceDriver(pdbbase)

## Load record instances
#dbLoadRecords("$(TOP)/db/flukePyrometer.db","user=bmartins")

iocInit()
