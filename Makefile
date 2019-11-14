CC = clang
TARGET ?= gol-wasm.wasm
WAT_TARGET = $(addsuffix .wat, $(basename $(TARGET)))
WASM_FLAGS = -nostdlib -Wall --target=wasm32 -Wl,--allow-undefined,--no-entry,--export=start
WASM_OPT_FLAGS = -O --asyncify --pass-arg=asyncify-imports@env.next_frame --pass-arg=asyncify-ignore-indirect
SRC_DIRS ?= ./src

SRCS := $(shell find $(SRC_DIRS) -name *.cpp -or -name *.c -or -name *.s)

$(TARGET): $(SRCS)
	$(CC) $(WASM_FLAGS) $^ -o $@
	wasm-opt $(WASM_OPT_FLAGS) $@ -o $@
	wasm2wat $@ -o $(WAT_TARGET)

.PHONY: clean
clean:
	$(RM) $(TARGET) $(WAST_TARGET)
