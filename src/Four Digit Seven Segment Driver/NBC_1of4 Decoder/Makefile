GHDL=ghdl
FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) NBC_OneOfFour_Test.vhdl NBC_OneOfFour.vhdl
	@$(GHDL) -e $(FLAGS) NBC_OneOfFour_Test
	@$(GHDL) -r $(FLAGS) NBC_OneOfFour_Test --wave=wave.ghw --stop-time=200ns --vcd=sim.vcd
