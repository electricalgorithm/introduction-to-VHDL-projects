GHDL=ghdl
FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) BCDtoSevenSEGdecoderTest.vhdl BCDtoSevenSEGdecoder.vhdl
	@$(GHDL) -e $(FLAGS) BCDtoSevenSEGdecoderTest
	@$(GHDL) -r $(FLAGS) BCDtoSevenSEGdecoderTest --wave=wave.ghw --stop-time=200ns --vcd=sim.vcd
