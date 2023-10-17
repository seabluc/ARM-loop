#ARM loop -
Sums up 10 integers that are 10, 9, 8, 7, 6, 5, 4, 3, 2, and 1. R0 is used to maintain an intermediate and the final sum. The result of R0 should be stored into the sum variable at address
0x0100. Please note that VisUAL uses memory address 0x0000 – 0x00FF for code (which is actually not visible from the simulator) and thus allocates any readable/writable data to the memory space starting at 0x0100. When you define “sum” as shown below (in line 2), sum occupies memory 0x0100 – 0x0103 as an integer needs 4 bytes.
