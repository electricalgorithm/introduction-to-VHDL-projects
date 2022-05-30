GHDL=ghdl
FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) counterTest.vhdl counter.vhdl
	@$(GHDL) -e $(FLAGS) counterTest
	@$(GHDL) -r $(FLAGS) counterTest --wave=wave.ghw --stop-time=10us --vcd=sim.vcd
