
@rem Require pkzip command line last version,
@rem change the name from pk to pkzip or whatever exists on you computer.

del ..\ctocpp-1.4.0.zip
del *.pyc
del *.bak
del c2cpp\*.pyc
del c2cpp\*.bak
del temp
pk -add -dir -rec ..\ctocpp-1.4.0 ..\ctocpp-1.4.0\*.*

