here try to learn from verilator's multithreading compilation method and use it in C++ testbench.
"--no-threads" is the default option for verilator multithreading.

1. modify Makefile to enable multiple threading option. e.g. add "VERILATOR_FLAGS += --threads 4"
2. run make with "VERILATOR_FLAGS += --threads 4" statement, comment this line and run make again, compare the verilatored top model(generated obj_dir/Vtop.cpp, obj_dir/Vtop.h)

conclusion:
