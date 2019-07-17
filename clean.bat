@echo off
@cd lib_projects

@cd dwin_51
@del>nul 2>nul *.uvgui.*
@del>nul 2>nul *.uvopt
@cd lib
@del>nul 2>nul *.obj
@del>nul 2>nul *.__b
@del>nul 2>nul *.htm
@cd ../list
@del>nul 2>nul *.lst
@cd ../../

@cd dwin_dgus
@del>nul 2>nul *.uvgui.*
@del>nul 2>nul *.uvopt
@cd lib
@del>nul 2>nul *.obj
@del>nul 2>nul *.__b
@del>nul 2>nul *.htm
@cd ../list
@del>nul 2>nul *.lst
@del>nul 2>nul *.map
@cd ../../

@cd dwin_uart
@del>nul 2>nul *.uvgui.*
@del>nul 2>nul *.uvopt
@cd lib
@del>nul 2>nul *.obj
@del>nul 2>nul *.__b
@del>nul 2>nul *.htm
@cd ../list
@del>nul 2>nul *.lst
@del>nul 2>nul *.map
@cd ../../

@cd dwin_usb
@del>nul 2>nul *.uvgui.*
@del>nul 2>nul *.uvopt
@cd lib
@del>nul 2>nul *.obj
@del>nul 2>nul *.__b
@del>nul 2>nul *.htm
@cd ../list
@del>nul 2>nul *.lst
@del>nul 2>nul *.map
@cd ../../

@cd template
@del>nul 2>nul *.uvgui.*
@del>nul 2>nul *.uvopt
@cd lib
@del>nul 2>nul *.obj
@del>nul 2>nul *.__b
@del>nul 2>nul *.htm
@cd ../list
@del>nul 2>nul *.lst
@del>nul 2>nul *.map
@cd ../../

@cd all
@del>nul 2>nul *.uvgui.*
@del>nul 2>nul *.uvopt
@cd lib
@del>nul 2>nul *.obj
@del>nul 2>nul *.__b
@del>nul 2>nul *.htm
@cd ../list
@del>nul 2>nul *.lst
@del>nul 2>nul *.map
@cd ../../

@cd../user_projects

@cd usb_demo
@del>nul 2>nul *.uvgui.*
@del>nul 2>nul *.uvopt
@cd obj
@del>nul 2>nul *.obj
@del>nul 2>nul *.__b
@del>nul 2>nul *.htm
@del>nul 2>nul *.hex
@del>nul 2>nul *.lnp
@del>nul 2>nul *.SBR
@cd ../list
@del>nul 2>nul *.lst
@del>nul 2>nul *.map
@cd ../../

@cd template
@del>nul 2>nul *.uvgui.*
@del>nul 2>nul *.uvopt
@cd obj
@del>nul 2>nul *.obj
@del>nul 2>nul *.__b
@del>nul 2>nul *.htm
@del>nul 2>nul *.hex
@del>nul 2>nul *.lnp
@del>nul 2>nul *.SBR
@cd ../list
@del>nul 2>nul *.lst
@del>nul 2>nul *.map
@cd ../../


echo !!!!clean done!!!!
pause