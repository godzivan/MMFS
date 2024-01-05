INCLUDE "DEVICE.asm"

_MASTER_=TRUE           ; Master version
_ELECTRON_=FALSE        ; Electron version
_SWRAM_=FALSE           ; Sideways RAM Version
_BP12K_=FALSE           ; B+ private RAM version
_ROMS_=FALSE            ; Include *ROMS command (i.e. No DFS or 8271 DFS)
_COMMANDS_=TRUE         ; Include normal DFS commands (*COPY etc)
_UTILS_=FALSE           ; Include utilites (*DUMP etc.) (i.e. No DFS)
_TUBEHOST_=FALSE        ; Include Tube Host (i.e. no DFS or DFS 0.90)
_TUBE_BASE=&FEE0        ; Base Address of Tube
_LARGEFILES=TRUE        ; true = enable long (>64K) file support
_DEBUG=FALSE            ; true = enable debugging of service calls, etc
_DEBUG_MMC=FALSE        ; true = enable debugging of MMC initialization
_DFS_EMUL=TRUE          ; true = use DFS filesystem number + handles

MACRO BASE_NAME
    EQUS "Master "
    SYSTEM_NAME
IF _DEVICE_="U2" OR _DEVICE_="T2"
    EQUS " (FE80)"
ENDIF
IF _DEVICE_="U3" OR _DEVICE_="T3"
    EQUS " (FEA0)"
ENDIF
ENDMACRO

INCLUDE "mmfs100.asm"
