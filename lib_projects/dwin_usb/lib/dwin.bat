@echo off
@cd lib
@copy *.LIB ..\..\..\lib\*.lib
@srec_cat.exe *.hex -Intel -o T5L51.BIN -Binary