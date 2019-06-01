SET ASMPROC=node C:\Users\Nino\Desktop\USB\GitHub\asmproc\asmproc.js
SET ASMPROC=call asmproc 

%ASMPROC% -i %1.lm -o %1.asm --target z80asm
yaza %1.asm --lst --sym --output:%1.bin
