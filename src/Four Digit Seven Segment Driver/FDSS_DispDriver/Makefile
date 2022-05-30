GHDL=ghdl
FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) FDSS_Disp.vhdl
	@$(GHDL) -e $(FLAGS) FDSS_Disp
	@$(GHDL) -r $(FLAGS) FDSS_Disp --wave=wave.ghw --stop-time=10us --vcd=sim.vcd
