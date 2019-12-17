/* Drones
 * Author: Soline LECOMTE, Gaël LODE
 * M1 Alma 2019
 */
MACHINE
    Drones

SETS
    TYPES = { Militaire , Civil } ;
    IMAGES ;
    DRONES
CONCRETE_CONSTANTS
    maxDrones ,
    maxImages ,
    img
PROPERTIES
    maxDrones : NAT
    & maxDrones >= 0
    & maxDrones < MAXINT
    & maxImages : NAT
    & maxImages >= 0
    & maxImages < MAXINT
    & img : IMAGES
ABSTRACT_VARIABLES
    image , //ensemble des Images prise par des drones connecté au logiciel
    drone , // ensemble des Drones connecté au logiciel
    typeDrone , // pour un drone donné on a le type
    droneImage , // pour une image donné on a le drone qui a pris l'a pris
    diffuseImage // ensemble des images diffusées
INVARIANT
    image : FIN ( IMAGES )
    & drone : FIN ( DRONES )
    & diffuseImage : FIN ( IMAGES )
    & typeDrone : drone --> TYPES
    & droneImage : image <-> drone // propriété 2 et propriété 3, les images sont issu d'un seul drones connecté au logiciel
    & card ( image ) <= maxImages
    & card ( drone ) <= maxDrones
    & card ( diffuseImage ) <= card ( image ) // on ne peut pas avoir plus d'image diffusé que d'image prise
    & ( ( img : diffuseImage ) => ( typeDrone ( droneImage ( img ) ) = Civil ) ) // propriété 1 : les image diffusé provienne d'un drone civil

INITIALISATION
    image := {}
    || drone := {}
    || diffuseImage := {}
    || typeDrone := {}
    || droneImage := {}
OPERATIONS
    //Ajout d'un drone au logiciel, on nous donne son identifiant et son type
    ajouterDrone ( dd , tt ) =
    PRE
        dd : DRONES // identifiant du drone
        & tt : TYPES // type du drone
        & dd /: drone
        & dd |-> tt /: typeDrone // le drone n'est pas déjà connecté au logiciel
        & card ( drone ) < maxDrones // on peut encore rajouter des drones
    THEN
        typeDrone ( dd ) := tt ||
        drone := drone \/ { dd }
     END
     ;
     //Indique dans typeImg le type du drone qui a pris l'image ii
     typeImg <-- typeImage ( ii ) =
     PRE
         ii : IMAGES // on  a bien une image
         & ii : image // l'image est bien présente dans notre base de donné
     THEN
          typeImg := typeDrone ( droneImage ( ii ) )
     END
     ;
     //on ajoute une image en fonction de ses paramètre, on part du principe que le drone qui à pris l'image est connecté au logiciel
     ajoutImage ( ii , dd ) =
     PRE
         ii : IMAGES
         & dd : DRONES
         & dd : drone
         & ii /: image // l'image n'est pas encore dans le logiciel
         & card ( image ) < maxImages
     THEN
         image := image \/ { ii } ||
         droneImage ( ii ) := dd
     END


END
