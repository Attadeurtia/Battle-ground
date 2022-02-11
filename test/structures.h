#ifndef __STRUCTURES_H_
#define __STRUCTURES_H_
#include <stdio.h>
#include <stdlib.h>

typedef struct def{
	int type_def;
	char *nom_fichier;
	int degat;
}defense;

typedef struct joue{
	int argent;
	int pv;
	char nom[50];
}joueur;

typedef struct entity{
	int type_entite;
	int pv;
	int degat;
	int x;
	int y_barre;
	int temps; /*valeur qui correspond au nombre d'itérations de boucles à attendre avant qu'il commence à avancer*/
	char nom_fichier[100];
	int montant; /*indicateur permettant de savoir si les images sont en phases montantes ou ascendantes*/
}entite;

typedef struct wave{
 entite *ent;
 struct wave *suiv;
 struct wave *prec;
}t_wave;


typedef struct partc{
	entite *ent;
	struct partc *suiv;
	struct partc *prec;
}partie_class;

#endif
