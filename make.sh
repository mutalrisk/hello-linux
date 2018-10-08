#!/bin/bash

#CROSS=your_cross_path

${CROSS}as -g startup.s -o startup.o
${CROSS}gcc -c -g test.c -o test.o
${CROSS}ld -T test.ld test.o startup.o -o test.elf
${CROSS}obj-copy -O binary test.elf test.bin
