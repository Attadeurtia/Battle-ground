#ifndef __JEU_H_
#define __JEU_H_
#include <SDL.h>

int quit_message();
int jeu_classique(SDL_Window *window, SDL_Renderer *rendu, SDL_Event *event, int difficulte);
int jeu_survivant(SDL_Window *window, SDL_Renderer *rendu, SDL_Event *event);
#endif
