CC = clang
TARGET ?= wasm/main.wasm
WAT_TARGET = $(addsuffix .wat, $(basename $(TARGET)))
WASM_FLAGS = -Wall -Wno-main-return-type -nostdlib --target=wasm32 -O1 -flto -Wl,--no-entry -Wl,--allow-undefined -Wl,--lto-O1, -Wl,--import-memory -Wl,--import-table -Wl,--compress-relocations -Wl,--strip-all
SRC_DIRS ?= ./src

SRCS := $(shell find $(SRC_DIRS) -name *.cpp -or -name *.c -or -name *.s)

$(TARGET): $(SRCS)
	$(CC) $(WASM_FLAGS) $^ -o $@
	wasm-opt -Oz -o $@ $@
	wasm2wat $@ -o $(WAT_TARGET)

.PHONY: clean
clean:
	$(RM) $(TARGET) $(WAST_TARGET)
