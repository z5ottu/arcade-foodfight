#
#
#

#V = verilator
#V = /usr/local/bin/verilator
V = /usr/local/src/verilator-3.876/bin/verilator
COSIM = n

TOP = --top-module ff_verilator
RTL = ../rtl
CPU = ../m68k
ROM = ../roms/v3
V_INC = +incdir+$(RTL) +incdir+$(CPU) +incdir+$(ROM)

V_DEFINE = +define+debug=1 +define+SIMULATION=1

CFLAGS = "$(CC_OPT) $(CC_DEFINE) -I../../emu/famec"
LDFLAGS = "-L../../emu/famec -lSDL -lpthread -lfame"
EXE = ./tmp/Vff_verilator
V_OPT = -O2 
CC_OPT = -O

ifeq ($(COSIM),y)
CC_DEFINE = -DCOSIM=1
COSIM_SRC = cosim.cpp
else
CC_DEFINE =
COSIM_SRC =
endif

#V_DEFINE = +define+debug=1 +define+SIMULATION=1 +define+no_cpu=1
#V_OPT =
#CC_DEFINE = -Dno_cpu=1
#CC_OPT =

V_SRC = \
	ff_verilator.v \
	$(RTL)/ff.v $(RTL)/ff_top.v $(RTL)/m68000.v $(RTL)/pokey.v $(RTL)/joystick.v \
	$(RTL)/pal.v $(RTL)/prom_2b.v \
	$(RTL)/coderom16.v $(RTL)/coderam.v $(RTL)/rom_6lm.v $(RTL)/nvram.v  \
	$(RTL)/ram_pfram.v $(RTL)/ram_moram.v $(RTL)/ram_coloram.v  \
	$(RTL)/ram_dp256x8.v $(RTL)/scanconvert2_lx45.v

V_DEP = \
	$(CPU)/wf68k00ip_address_registers.v \
	$(CPU)/wf68k00ip_alu.v \
	$(CPU)/wf68k00ip_bus_interface.v \
	$(CPU)/wf68k00ip_control.v \
	$(CPU)/wf68k00ip_data_registers.v \
	$(CPU)/wf68k00ip_interrupt_controller.v \
	$(CPU)/wf68k00ip_opcode_decoder.v \
	$(CPU)/wf68k00ip_shifter.v \
	$(CPU)/wf68k00ip_top_soc.v \
	$(CPU)/wf68k00ip_top.v

C_SRC = \
	ff_verilator.cpp $(COSIM_SRC) vga.cpp

VOUT = tmp/Vff_verilator.cpp

all: $(EXE)

$(VOUT): $(V_SRC) $(V_DEP) Makefile
	$V -cc $(V_OPT) -LDFLAGS $(LDFLAGS) -exe --trace --Mdir ./tmp $(V_DEFINE) $(V_INC) $(TOP) -CFLAGS $(CFLAGS) $(V_SRC) $(C_SRC)

$(EXE): $(VOUT) $(C_SRC)
#	(cd tmp; make OPT="-fauto-inc-dec -fdce -fdefer-pop -fdse -ftree-ccp -ftree-ch -ftree-fre -ftree-dce -ftree-dse" -f Vff_verilator.mk)
	(cd tmp; make -f Vff_verilator.mk)

fast:
	(cd tmp; rm -f *.o ; make OPT="-fcompare-elim -fcprop-registers -fguess-branch-probability -fauto-inc-dec -fif-conversion2 -fif-conversion -fipa-pure-const -fdce -fipa-profile -fipa-reference -fmerge-constants -fsplit-wide-types -fdefer-pop -fdse -ftree-ccp -ftree-ch -ftree-fre -ftree-dce -ftree-dse -ftree-builtin-call-dce -ftree-copyrename -ftree-dominator-opts -ftree-forwprop -ftree-phiprop -ftree-sra -ftree-pta -ftree-ter -funit-at-a-time -ftree-bit-ccp -falign-functions  -falign-jumps -falign-loops  -falign-labels -fcaller-saves -fcrossjumping -fcse-follow-jumps -fcse-skip-blocks -fdelete-null-pointer-checks -fdevirtualize -fexpensive-optimizations -fgcse  -fgcse-lm -finline-small-functions -findirect-inlining -fipa-sra -foptimize-sibling-calls -fpartial-inlining -fpeephole2 -fregmove -freorder-blocks  -freorder-functions -frerun-cse-after-loop -fsched-interblock  -fsched-spec -fschedule-insns -fschedule-insns2 -fstrict-aliasing -fstrict-overflow -ftree-switch-conversion -ftree-pre -ftree-vrp" -f Vff_verilator.mk)

clean:
	rm -f tmp/*
