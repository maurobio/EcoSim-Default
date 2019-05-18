CC=g++
CFLAGS=-c -Wall -O3 $(CPPFLAGS)
LINKFLAGS= $(LDFLAGS)
SOURCES=EcoSim.cpp Ecosystem.cpp Species.cpp Sim.cpp EasyBMP.cpp FCM.cpp FCMPredator.cpp FCMPrey.cpp Predator.cpp Prey.cpp Position.cpp Direction.cpp Random.cpp Stat.cpp StatSpeciesPrey.cpp StatSpeciesPred.cpp Manipulation.cpp PhysicalGenome.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=EcoSim

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LINKFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@ $(LINKFLAGS)
