//Automatically generated by makefile, do not edit
.n64 // Let armips know we're coding for the N64 architecture
.open "rom/Quest64.z64", "rom/Quest64.mod.z64", 0 // Open the ROM file
.org 0xD305E0
.fill 0xB860 //zero out old text
.include "asm/!image_bin.s"
.include "asm/Quest64.s"
.headersize 0x7F400000
.org 0x80400000
PAYLOAD_START_RAM:
.incbin "bin/QuestNewText.bin"
.include "asm/boot.asm"
.include "asm/symbols.asm"
.importobj "obj/spirits.o"
.importobj "obj/spells.o"
.importobj "obj/main.o"
.importobj "obj/spell_adjustments.o"
.importobj "obj/encounter_map.o"
.importobj "obj/bgm.o"
.importobj "obj/pause_screen.o"
.importobj "obj/npc_data.o"
PAYLOAD_END_RAM:
.close //close file
