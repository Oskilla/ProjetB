/* Bicloo
 * Author: Soline LECOMTE, Gaël LODE
 * M1 Alma 2019
 */
MACHINE
    Bicloo
SETS 
    PLACES = {pl1, pl2,pl3,pl4,pl5}
    ;BICLOO
CONSTANTS
    maxBicloo,
    maxPlaces
PROPERTIES
    // nombre max de vélo
    maxBicloo:NAT
    &maxBicloo >= 1
    &maxBicloo < MAXINT
    &maxPlaces:NAT
    &maxPlaces >= 1
    &maxPlaces < MAXINT
VARIABLES
    velo, // ensemble des vélos
    veloCircu, // ensemble des vélos en circulation
    libres, // ensemble des places libres dans un parcs
    place // relation entre un vélo et une place
INVARIANT
    velo:FIN(BICLOO) // les vélos sont un sous ensemble fini de BICLOO
    &veloCircu:FIN(BICLOO)
    &libres:FIN(PLACES) // ensemble de place libres, nous permet également de vérifier la propriété 2
    
    //cette ligne vérifie la propriété 3 : un vélo n'est pas nécessairement sur une place
    &place : veloCircu +-> PLACES 
    
    //c'est deux lignes nous assure la propriété 1, on n'a pas plus de vélo en circulation que de vélo au total
    &card(velo) <= maxBicloo  
    &card(veloCircu) <= card(velo) 
    
INITIALISATION
    velo := {} ||
    place := {} ||
    libres := {} ||
    veloCircu := {}
OPERATIONS
    //ranger un vélo a une place donnée 
    rangerVelo(vv,pl) =
    PRE
        vv:BICLOO&
        pl:PLACES & 
        vv:veloCircu & 
        card(libres)-1>=0
    THEN
        place:= place\/ {vv|->pl}
        ||libres := libres-{pl}
        ||veloCircu := veloCircu - {vv}
    END
    ;
    
    //on sort un vélo
    sortirVelo(vv) = 
    PRE 
        vv:BICLOO & 
        vv:velo & 
        vv/:veloCircu & 
        vv:dom(place) & 
        card(veloCircu)+1 <= card(velo) & 
        card(libres)+1 <= maxPlaces
    THEN
        libres := libres\/{place(vv)}
        ||place:={vv}<<|place
        ||veloCircu := veloCircu\/{vv}
    END
    
    
END