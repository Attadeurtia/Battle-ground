#changer le SDL_dir en fonction de la localisation de vos librairies sdl
#changer les flags en fonction du mode souhaité (débuggage ou non)
CC=gcc
FLAGS=-g -Wall
SDL_DIR=${HOME}/SDL2
SDL_LIB_DIR=${SDL_DIR}/lib
SDL_INC_DIR=${SDL_DIR}/include
LIBS=-L${SDL_LIB_DIR} -lSDL2 -lSDL2_image -lSDL2_mixer
INCS=-I${SDL_INC_DIR} -I include
OBJ=obj
BIN=bin
SRC=src
PROG=jeu
DIRS=$(OBJ) $(BIN)
all: $(DIRS) $(BIN)/$(PROG)


$(OBJ):
	mkdir -p $(OBJ)
$(BIN):
	mkdir -p $(BIN)
$(DOC):
	mkdir -p $(DOC)

SOURCES=$(wildcard $(SRC)/*.c)
INCLUDES=$(wildcard $(SRC)/*.h)

OBJECTS=$(SOURCES:$(SRC)/%.c=$(OBJ)/%.o)
OBJECTSALL=$(wildcard $(OBJ)/*.o)

$(BIN)/$(PROG): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(BIN)/$(PROG) ${LIBS} ${INCS} 
	@echo "compilation terminée !"

$(OBJECTS): $(OBJ)/%.o : $(SRC)/%.c
	$(CC) -c $< -o $@ ${FLAGS} ${LIBS} ${INCS} 
	@echo "liens effectués !"
	
clean:
	rm $(OBJ)/*.o