#@copyright: Bero

CC=arm-none-eabi-
CFLAGS=-g -mcpu=cortex-m3 -gdwarf-2
INCS=-I .
LIBS=
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
As = $(wildcard *.s)
AsOBJ = $(As:.s=.o)
Project_name= unit3-lesson3-lab2

all: $(Project_name).bin 
	@echo "---------------Build is done---------------"
	

	
%.o: %.c
	$(CC)gcc.exe -c $(CFLAGS) $(INCS)  $< -o $@


$(Project_name).elf: $(OBJ) $(AsOBJ)
	$(CC)ld.exe -T linker_script.ld $(LIBS) $(OBJ) $(AsOBJ) -o $@ -Map=Map_file.map
	
	
$(Project_name).bin: $(Project_name).elf
	$(CC)objcopy.exe -O binary $< $@
	
clean_all: 
	rm *.o *.elf *.bin
	@echo "---------------Clean all is done---------------"
	
clean: 
	rm *.elf *.bin
	@echo "---------------Clean is done---------------"