/* Bicloo
 * Author: Soline LECOMTE, Gaël LODE
 * M1 Alma 2019
 */
MACHINE
    Bicloo
SETS 
    PLACES = {pl1,pl2,pl3,pl4,pl5,pl6,pl7,pl8,pl9,pl10}
    ;BICLOO
CONSTANTS
    maxBicloo
PROPERTIES
    // nombre max de vélo
    maxBicloo:NAT
    &maxBicloo >= 1
    &maxBicloo < MAXINT
VARIABLES
    velo, // ensemble des vélos
    veloCircu, // ensemble des vélos en circulation
    libres, // ensemble des places libres
    place // relation entre un vélo et une place

INVARIANT
    velo:FIN(BICLOO)
    &veloCircu:FIN(BICLOO)
    &libres:FIN(PLACES) 
    
    //cette ligne vérifie la propriété 3 : un vélo n'est pas nécessairement sur une place
    &place : BICLOO >+> PLACES
    
    //c'est deux lignes nous assure la propriété 1, on n'a pas plus de vélo en circulation que de vélo au total
    &card(velo) <= maxBicloo  
    &card(veloCircu) <= card(velo) 
    
    // ensemble de place libres, nous permet également de vérifier la propriété 2
    &card(libres) <= card(velo) 
    
INITIALISATION
    velo := {} ||
    place := {} ||
    libres := {} ||
    veloCircu := {}
OPERATIONS
    //ranger un vélo vv issu d'une place pl 
    rangerVelo(vv,pl) =
    PRE
        vv:BICLOO&
        pl:PLACES & 
        vv:veloCircu & 
        vv/:dom(place)&
        card(libres)-1>=0 &
        pl:libres &
        pl/:ran(place)
    THEN
        place(vv) := pl
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
        card(libres)+1 <= card(velo)
    THEN
        libres := libres\/{place(vv)}
        ||place:={vv}<<|place
        ||veloCircu := veloCircu\/{vv}
    END
    ;
    
    //indique si une place pl est prise ou non
    res <-- placePrise(pl) = 
    PRE 
        pl:PLACES
    THEN
        res := bool(pl:ran(place))
    END 
    ;
    //indique si un velo vv est en circulation ou non
    res <-- veloEnCircu(vv) = 
    PRE 
        vv:BICLOO
        & vv:velo
    THEN
        res := bool(vv:veloCircu)
    END 
    ;
    //indique si un velo vv se trouve à la position pl
    res <-- confirmePositionVelo(vv,pl) = 
    PRE 
        vv:BICLOO
        & vv:velo
        & vv:dom(place)
        & pl:PLACES
        & pl/:libres
        & pl:ran(place)
    THEN
        res := bool(place(vv)=pl)
    END
    ;
    //indique la position du velo vv
    res <-- veloPosition(vv) = 
    PRE 
        vv:BICLOO
        & vv:velo
        & vv:dom(place)
    THEN
        res := place(vv)
    END
    
END