GHDL=ghdl
FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) mux4x1Test.vhdl mux4x1.vhdl
	@$(GHDL) -e $(FLAGS) mux4x1Test
	@$(GHDL) -r $(FLAGS) mux4x1Test --wave=wave.ghw --stop-time=200ns --vcd=sim.vcd
