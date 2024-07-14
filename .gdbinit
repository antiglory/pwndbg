source /pwndbg/gdbinit.py

define sregs
    regs
    regs cs ds es fs gs ss
end

# (glibc) chunk inspect
define ci
    p *(struct malloc_chunk*)$arg0
end

# configs
set show-retaddr-reg on
set show-flags on

# colors
set memory-rodata-color yellow,bold
