Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Bicloo))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Bicloo))==(Machine(Bicloo));
  Level(Machine(Bicloo))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Bicloo)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Bicloo))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Bicloo))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Bicloo))==(?);
  List_Includes(Machine(Bicloo))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Bicloo))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Bicloo))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Bicloo))==(?);
  Context_List_Variables(Machine(Bicloo))==(?);
  Abstract_List_Variables(Machine(Bicloo))==(?);
  Local_List_Variables(Machine(Bicloo))==(place,libres,veloCircu,velo);
  List_Variables(Machine(Bicloo))==(place,libres,veloCircu,velo);
  External_List_Variables(Machine(Bicloo))==(place,libres,veloCircu,velo)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Bicloo))==(?);
  Abstract_List_VisibleVariables(Machine(Bicloo))==(?);
  External_List_VisibleVariables(Machine(Bicloo))==(?);
  Expanded_List_VisibleVariables(Machine(Bicloo))==(?);
  List_VisibleVariables(Machine(Bicloo))==(?);
  Internal_List_VisibleVariables(Machine(Bicloo))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Bicloo))==(btrue);
  Gluing_List_Invariant(Machine(Bicloo))==(btrue);
  Expanded_List_Invariant(Machine(Bicloo))==(btrue);
  Abstract_List_Invariant(Machine(Bicloo))==(btrue);
  Context_List_Invariant(Machine(Bicloo))==(btrue);
  List_Invariant(Machine(Bicloo))==(velo: FIN(BICLOO) & veloCircu: FIN(BICLOO) & libres: FIN(PLACES) & place: BICLOO >+> PLACES & card(velo)<=maxBicloo & card(veloCircu)<=card(velo) & card(libres)<=card(velo))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Bicloo))==(btrue);
  Abstract_List_Assertions(Machine(Bicloo))==(btrue);
  Context_List_Assertions(Machine(Bicloo))==(btrue);
  List_Assertions(Machine(Bicloo))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Bicloo))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Bicloo))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Bicloo))==(velo,place,libres,veloCircu:={},{},{},{});
  Context_List_Initialisation(Machine(Bicloo))==(skip);
  List_Initialisation(Machine(Bicloo))==(velo:={} || place:={} || libres:={} || veloCircu:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Bicloo))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Bicloo))==(btrue);
  List_Constraints(Machine(Bicloo))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Bicloo))==(rangerVelo,sortirVelo,placePrise,veloEnCircu,confirmePositionVelo,veloPosition);
  List_Operations(Machine(Bicloo))==(rangerVelo,sortirVelo,placePrise,veloEnCircu,confirmePositionVelo,veloPosition)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bicloo),rangerVelo)==(vv,pl);
  List_Input(Machine(Bicloo),sortirVelo)==(vv);
  List_Input(Machine(Bicloo),placePrise)==(pl);
  List_Input(Machine(Bicloo),veloEnCircu)==(vv);
  List_Input(Machine(Bicloo),confirmePositionVelo)==(vv,pl);
  List_Input(Machine(Bicloo),veloPosition)==(vv)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bicloo),rangerVelo)==(?);
  List_Output(Machine(Bicloo),sortirVelo)==(?);
  List_Output(Machine(Bicloo),placePrise)==(res);
  List_Output(Machine(Bicloo),veloEnCircu)==(res);
  List_Output(Machine(Bicloo),confirmePositionVelo)==(res);
  List_Output(Machine(Bicloo),veloPosition)==(res)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bicloo),rangerVelo)==(rangerVelo(vv,pl));
  List_Header(Machine(Bicloo),sortirVelo)==(sortirVelo(vv));
  List_Header(Machine(Bicloo),placePrise)==(res <-- placePrise(pl));
  List_Header(Machine(Bicloo),veloEnCircu)==(res <-- veloEnCircu(vv));
  List_Header(Machine(Bicloo),confirmePositionVelo)==(res <-- confirmePositionVelo(vv,pl));
  List_Header(Machine(Bicloo),veloPosition)==(res <-- veloPosition(vv))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bicloo),rangerVelo)==(vv: BICLOO & pl: PLACES & vv: veloCircu & vv/:dom(place) & card(libres)-1>=0 & pl: libres & pl/:ran(place));
  List_Precondition(Machine(Bicloo),sortirVelo)==(vv: BICLOO & vv: velo & vv/:veloCircu & vv: dom(place) & card(veloCircu)+1<=card(velo) & card(libres)+1<=card(velo));
  List_Precondition(Machine(Bicloo),placePrise)==(pl: PLACES);
  List_Precondition(Machine(Bicloo),veloEnCircu)==(vv: BICLOO & vv: velo);
  List_Precondition(Machine(Bicloo),confirmePositionVelo)==(vv: BICLOO & vv: velo & vv: dom(place) & pl: PLACES & pl/:libres & pl: ran(place));
  List_Precondition(Machine(Bicloo),veloPosition)==(vv: BICLOO & vv: velo & vv: dom(place))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bicloo),veloPosition)==(vv: BICLOO & vv: velo & vv: dom(place) | res:=place(vv));
  Expanded_List_Substitution(Machine(Bicloo),confirmePositionVelo)==(vv: BICLOO & vv: velo & vv: dom(place) & pl: PLACES & pl/:libres & pl: ran(place) | res:=bool(place(vv) = pl));
  Expanded_List_Substitution(Machine(Bicloo),veloEnCircu)==(vv: BICLOO & vv: velo | res:=bool(vv: veloCircu));
  Expanded_List_Substitution(Machine(Bicloo),placePrise)==(pl: PLACES | res:=bool(pl: ran(place)));
  Expanded_List_Substitution(Machine(Bicloo),sortirVelo)==(vv: BICLOO & vv: velo & vv/:veloCircu & vv: dom(place) & card(veloCircu)+1<=card(velo) & card(libres)+1<=card(velo) | libres,place,veloCircu:=libres\/{place(vv)},{vv}<<|place,veloCircu\/{vv});
  Expanded_List_Substitution(Machine(Bicloo),rangerVelo)==(vv: BICLOO & pl: PLACES & vv: veloCircu & vv/:dom(place) & card(libres)-1>=0 & pl: libres & pl/:ran(place) | place,libres,veloCircu:=place<+{vv|->pl},libres-{pl},veloCircu-{vv});
  List_Substitution(Machine(Bicloo),rangerVelo)==(place(vv):=pl || libres:=libres-{pl} || veloCircu:=veloCircu-{vv});
  List_Substitution(Machine(Bicloo),sortirVelo)==(libres:=libres\/{place(vv)} || place:={vv}<<|place || veloCircu:=veloCircu\/{vv});
  List_Substitution(Machine(Bicloo),placePrise)==(res:=bool(pl: ran(place)));
  List_Substitution(Machine(Bicloo),veloEnCircu)==(res:=bool(vv: veloCircu));
  List_Substitution(Machine(Bicloo),confirmePositionVelo)==(res:=bool(place(vv) = pl));
  List_Substitution(Machine(Bicloo),veloPosition)==(res:=place(vv))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bicloo))==(maxBicloo);
  Inherited_List_Constants(Machine(Bicloo))==(?);
  List_Constants(Machine(Bicloo))==(maxBicloo)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bicloo),PLACES)==({pl1,pl2,pl3,pl4,pl5,pl6,pl7,pl8,pl9,pl10});
  Context_List_Enumerated(Machine(Bicloo))==(?);
  Context_List_Defered(Machine(Bicloo))==(?);
  Context_List_Sets(Machine(Bicloo))==(?);
  List_Valuable_Sets(Machine(Bicloo))==(BICLOO);
  Inherited_List_Enumerated(Machine(Bicloo))==(?);
  Inherited_List_Defered(Machine(Bicloo))==(?);
  Inherited_List_Sets(Machine(Bicloo))==(?);
  List_Enumerated(Machine(Bicloo))==(PLACES);
  List_Defered(Machine(Bicloo))==(BICLOO);
  List_Sets(Machine(Bicloo))==(PLACES,BICLOO);
  Set_Definition(Machine(Bicloo),BICLOO)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Bicloo))==(?);
  Expanded_List_HiddenConstants(Machine(Bicloo))==(?);
  List_HiddenConstants(Machine(Bicloo))==(?);
  External_List_HiddenConstants(Machine(Bicloo))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Bicloo))==(btrue);
  Context_List_Properties(Machine(Bicloo))==(btrue);
  Inherited_List_Properties(Machine(Bicloo))==(btrue);
  List_Properties(Machine(Bicloo))==(maxBicloo: NAT & maxBicloo>=1 & maxBicloo<MAXINT & BICLOO: FIN(INTEGER) & not(BICLOO = {}) & PLACES: FIN(INTEGER) & not(PLACES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bicloo),rangerVelo)==(?);
  List_ANY_Var(Machine(Bicloo),sortirVelo)==(?);
  List_ANY_Var(Machine(Bicloo),placePrise)==(?);
  List_ANY_Var(Machine(Bicloo),veloEnCircu)==(?);
  List_ANY_Var(Machine(Bicloo),confirmePositionVelo)==(?);
  List_ANY_Var(Machine(Bicloo),veloPosition)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bicloo)) == (maxBicloo,PLACES,BICLOO,pl1,pl2,pl3,pl4,pl5,pl6,pl7,pl8,pl9,pl10 | ? | place,libres,veloCircu,velo | ? | rangerVelo,sortirVelo,placePrise,veloEnCircu,confirmePositionVelo,veloPosition | ? | ? | ? | Bicloo);
  List_Of_HiddenCst_Ids(Machine(Bicloo)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bicloo)) == (maxBicloo);
  List_Of_VisibleVar_Ids(Machine(Bicloo)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bicloo)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bicloo)) == (Type(PLACES) == Cst(SetOf(etype(PLACES,0,9)));Type(BICLOO) == Cst(SetOf(atype(BICLOO,"[BICLOO","]BICLOO"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Bicloo)) == (Type(pl1) == Cst(etype(PLACES,0,9));Type(pl2) == Cst(etype(PLACES,0,9));Type(pl3) == Cst(etype(PLACES,0,9));Type(pl4) == Cst(etype(PLACES,0,9));Type(pl5) == Cst(etype(PLACES,0,9));Type(pl6) == Cst(etype(PLACES,0,9));Type(pl7) == Cst(etype(PLACES,0,9));Type(pl8) == Cst(etype(PLACES,0,9));Type(pl9) == Cst(etype(PLACES,0,9));Type(pl10) == Cst(etype(PLACES,0,9));Type(maxBicloo) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bicloo)) == (Type(place) == Mvl(SetOf(atype(BICLOO,?,?)*etype(PLACES,?,?)));Type(libres) == Mvl(SetOf(etype(PLACES,?,?)));Type(veloCircu) == Mvl(SetOf(atype(BICLOO,?,?)));Type(velo) == Mvl(SetOf(atype(BICLOO,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bicloo)) == (Type(veloPosition) == Cst(etype(PLACES,?,?),atype(BICLOO,?,?));Type(confirmePositionVelo) == Cst(btype(BOOL,?,?),atype(BICLOO,?,?)*etype(PLACES,?,?));Type(veloEnCircu) == Cst(btype(BOOL,?,?),atype(BICLOO,?,?));Type(placePrise) == Cst(btype(BOOL,?,?),etype(PLACES,?,?));Type(sortirVelo) == Cst(No_type,atype(BICLOO,?,?));Type(rangerVelo) == Cst(No_type,atype(BICLOO,?,?)*etype(PLACES,?,?)));
  Observers(Machine(Bicloo)) == (Type(veloPosition) == Cst(etype(PLACES,?,?),atype(BICLOO,?,?));Type(confirmePositionVelo) == Cst(btype(BOOL,?,?),atype(BICLOO,?,?)*etype(PLACES,?,?));Type(veloEnCircu) == Cst(btype(BOOL,?,?),atype(BICLOO,?,?));Type(placePrise) == Cst(btype(BOOL,?,?),etype(PLACES,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
