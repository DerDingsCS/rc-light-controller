.DEFAULT_GOAL := all

###############################################################################
# Configuration options for our application
TARGET := firmware
BUILD_DIR = build
DEFAULT_LIGHT_PROGRAM := light_programs/generic.light_program


###############################################################################
# Pretty-print setup
VERBOSE ?= $V
ifeq ("$(VERBOSE)", "1")
ECHO :=
else
ECHO := @
endif


###############################################################################
# Toolchain setup
CC := arm-none-eabi-gcc
OBJCOPY := arm-none-eabi-objcopy
SIZE := arm-none-eabi-size
GDB := arm-none-eabi-gdb

TOOL_PATH := ../tools/
GENERIC_TOOL_PATH := ../../tools/

MKDIR_P := mkdir -p
FLASH_TOOL := lpc81x_isp.py --wait --run --flash
TERMINAL_PROGRAM := miniterm.py /dev/ttyUSB0 115200
PREPROCESSOR_SIMULATOR := $(GENERIC_TOOL_PATH)preprocessor-simulator.py -b 115200
CONFIGURATION_VALIDATION_TOOL := $(TOOL_PATH)validate_image_file.py
DEFAULT_FIRMWARE_IMAGE_JS := $(TOOL_PATH)configurator/src/default_firmware_image_mk4.js
TEXT2JS := $(TOOL_PATH)text2js.py


###############################################################################
# Source files    Note: all source files must be relative paths!
SOURCES += main.c
SOURCES += aux_handler.c
SOURCES += channel_reversing.c
SOURCES += config.c
SOURCES += config_lights.c
SOURCES += drive_mode.c
SOURCES += ibus_reader.c
SOURCES += indicators.c
SOURCES += light_programs.c
SOURCES += lights.c
SOURCES += persistent_storage.c
SOURCES += preprocessor_output.c
SOURCES += preprocessor_reader.c
SOURCES += random.c
SOURCES += sbus_reader.c
SOURCES += servo_output.c
SOURCES += servo_reader.c
SOURCES += shelf_queen_mode.c
SOURCES += libs/printf/printf.c
SOURCES += hal/startup_lpc81x.c
SOURCES += hal/hal_lpc81x.c

INCLUDES := -I.
INCLUDES += -I./hal
INCLUDES += -isystem./libs/printf
INCLUDES += -isystem./hal/LPC8xx

DEFINES += -DNODEBUG
DEFINES += -DENABLE_SERVO_READER
DEFINES += -DENABLE_PREPROCESSOR_READER
DEFINES += -DENABLE_IBUS_READER
DEFINES += -DENABLE_SBUS_READER

LIBS := -lnosys

DEPENDENCIES := Makefile


###############################################################################
# Compiler and linker flags
CPU_FLAGS = -mthumb -mcpu=cortex-m0plus -mlittle-endian

CFLAGS = $(CPU_FLAGS)
CFLAGS += -std=c99
CFLAGS += -Os
CFLAGS += -W -Wall -Wextra -Wpedantic
CFLAGS += -Wstrict-prototypes -Wshadow -Wwrite-strings
CFLAGS += -Wdeclaration-after-statement -Waddress -Wlogical-op
CFLAGS += -Wold-style-definition -Wmissing-prototypes -Wmissing-declarations
CFLAGS += -Wmissing-field-initializers -Wdouble-promotion -Wfloat-equal
CFLAGS += -Wswitch-enum -Wswitch-default -Wuninitialized -Wunknown-pragmas
CFLAGS += -Wundef
CFLAGS += -funsigned-char
CFLAGS += -funsigned-bitfields
CFLAGS += -fdata-sections
CFLAGS += -ffunction-sections
CFLAGS += -fno-common
CFLAGS += -fpack-struct=4
CFLAGS += -MMD -MP -MT $(BUILD_DIR)/$(*F).o -MF $(BUILD_DIR)/$(@F).d
CFLAGS += $(INCLUDES) $(DEFINES)

LDFLAGS = $(CPU_FLAGS)
LDFLAGS += -Wl,-T,$(LINKER_SCRIPT)
LDFLAGS += -Wl,--warn-common
LDFLAGS += -Wl,--gc-sections
LDFLAGS += -Wl,-Os
LDFLAGS += -Wl,-Map=$(TARGET_MAP) -Wl,--cref

LINKER_SCRIPT := hal/lpc812.ld


###############################################################################
# TARGET and object file setup
OBJECTS = $(addprefix $(BUILD_DIR)/, $(notdir %/$(subst .c,.o, $(SOURCES))))

TARGET_ELF := $(addprefix $(BUILD_DIR)/, $(TARGET).elf)
TARGET_BIN := $(addprefix $(BUILD_DIR)/, $(TARGET).bin)
TARGET_HEX := $(addprefix $(BUILD_DIR)/, $(TARGET).hex)
TARGET_MAP := $(addprefix $(BUILD_DIR)/, $(TARGET).map)

$(OBJECTS): $(DEPENDENCIES)
$(TARGET_MAP): $(TARGET_ELF)


###############################################################################
# Rules
all : $(TARGET_BIN) $(TARGET_HEX) echosize

$(BUILD_DIR):
	@echo [MKDIR] $@
	@mkdir -p $@

$(TARGET_ELF): $(BUILD_DIR) $(OBJECTS) $(LINKER_SCRIPT)
	@echo [LD] $@
	$(ECHO) $(CC) $(LDFLAGS) $(OBJECTS) $(LIBS) -o $@

$(TARGET_BIN): $(TARGET_ELF)
	@echo [CP] $@
	$(ECHO) $(OBJCOPY) $< -O binary $@
	$(ECHO) $(CONFIGURATION_VALIDATION_TOOL) $@

$(TARGET_HEX): $(TARGET_ELF)
	@echo [CP] $@
	$(ECHO) $(OBJCOPY) $< -O ihex $@

%.o:
	@echo [CC] $@
	$(ECHO) $(CC) $(CFLAGS) $(filter %/$(subst .o,.c,$(@F)), $(addprefix ./,$(SOURCES))) -c -o $@

%.lst:
	@echo [LIST] $@
	$(ECHO) $(CC) -c -g -Wa,-adlhn $(CFLAGS) $(filter %/$(subst .lst,.c,$(@F)), $(addprefix ./,$(SOURCES))) -o /dev/null > $@

echosize: $(TARGET_ELF)
	-@echo ''
	$(ECHO) $(SIZE) $(TARGET_ELF)
	-@echo ''

default_firmware_image: $(TARGET_HEX)
	@echo [TEXT2JS] $<
	$(ECHO) $(TEXT2JS) $< default_firmware_image_mk4 >$(DEFAULT_FIRMWARE_IMAGE_JS)

# Create list files that include C code as well as Assembler
list: $(BUILD_DIR) $(OBJECTS:.o=.lst)

# Invoke the tool to program the microcontroller
program: $(TARGET_HEX)
	$(QUIET )$(FLASH_TOOL) $<

# Invoke a tool for UART communication
terminal:
	$(ECHO) $(TERMINAL_PROGRAM)

# Invoke the preprocessor simulation tool
preprocessor-simulator:
	$(ECHO) $(PREPROCESSOR_SIMULATOR)

# Clean all generated files
clean:
	@echo [RM] $(BUILD_DIR)
	$(ECHO) $(RM) -rf $(BUILD_DIR)


.PHONY : all clean echosize list program flash terminal default_firmware_image preprocessor-simulator

-include $(wildcard $(BUILD_DIR)/*.d)
