#ifndef __KEYBOARD_H__
#define __KEYBOARD_H__

#ifdef SDL_2
#include <SDL2/SDL.h>
#else
#include <SDL/SDL.h>
#endif

void init_keyboard();
void draw_keyboard(SDL_Surface* surface);
int handle_keyboard_event(SDL_Event* event);
extern int active;
extern int show_help;

#endif
