CC=g++
SRCDIR=src
BUILDDIR=build
BINDIR=bin
TARGET=$(BINDIR)/printer

SOURCES=$(SRCDIR)/printer.cpp $(SRCDIR)/main.cpp
OBJECTS=$(BUILDDIR)/printer.o $(BUILDDIR)/main.o
CFLAGS=-g
INCLUDE=-I./include/
LIB=-lpthread -lm

$(TARGET): $(OBJECTS)
	@mkdir -p $(BINDIR)
	@echo "Linking.."
	$(CC) $^ -o $(TARGET) $(LIB)

$(BUILDDIR)/%.o: $(SRCDIR)/%.cpp
	@mkdir -p $(BUILDDIR)
	$(CC) $(CGLAGS) $(INCLUDE) -c -o $@ $<

clean: 
	@echo "Cleaning..."
	$(RM) -r $(BUILDIR) $(TARGET)

.PHONY: clean


