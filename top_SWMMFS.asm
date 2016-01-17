_MASTER_=FALSE          ; Master version
_SWRAM_=TRUE            ; Sideways RAM Version
_ROMS_=FALSE            ; Include *ROMS command (i.e. No DFS or 8271 DFS)
_UTILS_=TRUE            ; Include utilites (*DUMP etc.) (i.e. No DFS)
_TUBEHOST_=TRUE         ; Include Tube Host (i.e. no DFS or DFS 0.90)
_VIA_BASE=&FE60         ; Base Address of 6522 VIA
_TUBE_BASE=&FEE0        ; Base Address of Tube

INCLUDE "mmfs100.asm"

SAVE "build/SWMMFS", &8000, &C000