set disassembly intel
#set disable-randomization off
set print asm-demangle on

#alias ctxd = gef config context.enable False
# alias ctxe = gef config context.enable True

source /home/mathway/.local/src/gef/gef.py

alias ctxd = gef config context.enable False
alias ctxe = gef config context.enable True
alias hec = heap chunks
alias heb = heap bins
alias hd = hexdump
