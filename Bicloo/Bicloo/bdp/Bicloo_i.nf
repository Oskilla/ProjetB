Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Bicloo_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Bicloo_i))==(Machine(Bicloo));
  Level(Implementation(Bicloo_i))==(1);
  Upper_Level(Implementation(Bicloo_i))==(Machine(Bicloo))
END
&
THEORY LoadedStructureX IS
  Implementation(Bicloo_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Bicloo_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Bicloo_i))==(?);
  Inherited_List_Includes(Implementation(Bicloo_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Bicloo_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Bicloo_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Bicloo_i))==(?);
  Context_List_Variables(Implementation(Bicloo_i))==(?);
  Abstract_List_Variables(Implementation(Bicloo_i))==(place,libres,veloCircu,velo);
  Local_List_Variables(Implementation(Bicloo_i))==(?);
  List_Variables(Implementation(Bicloo_i))==(?);
  External_List_Variables(Implementation(Bicloo_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Bicloo_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Bicloo_i))==(?);
  External_List_VisibleVariables(Implementation(Bicloo_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Bicloo_i))==(?);
  List_VisibleVariables(Implementation(Bicloo_i))==(c_place,c_libres,c_veloCircu,c_velo);
  Internal_List_VisibleVariables(Implementation(Bicloo_i))==(c_place,c_libres,c_veloCircu,c_velo)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Bicloo_i))==(btrue);
  Expanded_List_Invariant(Implementation(Bicloo_i))==(btrue);
  Abstract_List_Invariant(Implementation(Bicloo_i))==(velo: FIN(BICLOO) & veloCircu: FIN(BICLOO) & libres: FIN(PLACES) & place: BICLOO >+> PLACES & card(velo)<=maxBicloo & card(veloCircu)<=card(velo) & card(libres)<=card(velo));
  Context_List_Invariant(Implementation(Bicloo_i))==(btrue);
  List_Invariant(Implementation(Bicloo_i))==(c_velo: 1..10 --> OKKO & velo = c_velo~[{OK}] & c_veloCircu: 1..10 --> OKKO & veloCircu = c_veloCircu~[{KO}] & c_libres: FIN(PLACES) & c_place: 1..10 >+> PLACES & place = veloCircu<|c_place)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Bicloo_i))==(btrue);
  Abstract_List_Assertions(Implementation(Bicloo_i))==(btrue);
  Context_List_Assertions(Implementation(Bicloo_i))==(btrue);
  List_Assertions(Implementation(Bicloo_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Bicloo_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Bicloo_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Bicloo_i))==(c_velo:=(1..10)*{OK};c_veloCircu:=(1..10)*{OK};c_libres:={pl1,pl2,pl3,pl4,pl5,pl6,pl7,pl8,pl9,pl10};c_place:=(1..10)*{pl1});
  Context_List_Initialisation(Implementation(Bicloo_i))==(skip);
  List_Initialisation(Implementation(Bicloo_i))==(c_velo:=(1..10)*{OK};c_veloCircu:=(1..10)*{OK};c_libres:={pl1,pl2,pl3,pl4,pl5,pl6,pl7,pl8,pl9,pl10};c_place:=(1..10)*{pl1})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Bicloo_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Bicloo_i))==(btrue);
  List_Context_Constraints(Implementation(Bicloo_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Bicloo_i))==(rangerVelo,sortirVelo);
  List_Operations(Implementation(Bicloo_i))==(rangerVelo,sortirVelo)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Bicloo_i),rangerVelo)==(vv,pl);
  List_Input(Implementation(Bicloo_i),sortirVelo)==(vv)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Bicloo_i),rangerVelo)==(?);
  List_Output(Implementation(Bicloo_i),sortirVelo)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Bicloo_i),rangerVelo)==(rangerVelo(vv,pl));
  List_Header(Implementation(Bicloo_i),sortirVelo)==(sortirVelo(vv))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Bicloo_i),rangerVelo)==(btrue);
  List_Precondition(Implementation(Bicloo_i),rangerVelo)==(vv: BICLOO & pl: PLACES & vv: veloCircu & vv/:dom(place) & card(libres)-1>=0 & pl: libres & pl/:ran(place));
  Own_Precondition(Implementation(Bicloo_i),sortirVelo)==(btrue);
  List_Precondition(Implementation(Bicloo_i),sortirVelo)==(vv: BICLOO & vv: velo & vv/:veloCircu & vv: dom(place) & card(veloCircu)+1<=card(velo) & card(libres)+1<=card(velo))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Bicloo_i),sortirVelo)==(vv: BICLOO & vv: velo & vv/:veloCircu & vv: dom(place) & card(veloCircu)+1<=card(velo) & card(libres)+1<=card(velo) | (vv: dom(c_place) | c_libres:=c_libres\/{c_place(vv)});c_place:={vv}<<|c_place;(vv: dom(c_veloCircu) | c_veloCircu:=c_veloCircu<+{vv|->KO}));
  Expanded_List_Substitution(Implementation(Bicloo_i),rangerVelo)==(vv: BICLOO & pl: PLACES & vv: veloCircu & vv/:dom(place) & card(libres)-1>=0 & pl: libres & pl/:ran(place) | (vv: dom(c_place) | c_place:=c_place<+{vv|->pl});c_libres:=c_libres-{pl};(vv: dom(c_veloCircu) | c_veloCircu:=c_veloCircu<+{vv|->OK}));
  List_Substitution(Implementation(Bicloo_i),rangerVelo)==(c_place(vv):=pl;c_libres:=c_libres-{pl};c_veloCircu(vv):=OK);
  List_Substitution(Implementation(Bicloo_i),sortirVelo)==(c_libres:=c_libres\/{c_place(vv)};c_place:={vv}<<|c_place;c_veloCircu(vv):=KO)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Bicloo_i))==(maxBicloo);
  Inherited_List_Constants(Implementation(Bicloo_i))==(maxBicloo);
  List_Constants(Implementation(Bicloo_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Bicloo_i),BICLOO)==(?);
  Context_List_Enumerated(Implementation(Bicloo_i))==(?);
  Context_List_Defered(Implementation(Bicloo_i))==(?);
  Context_List_Sets(Implementation(Bicloo_i))==(?);
  List_Own_Enumerated(Implementation(Bicloo_i))==(PLACES,OKKO);
  List_Valuable_Sets(Implementation(Bicloo_i))==(BICLOO);
  Inherited_List_Enumerated(Implementation(Bicloo_i))==(PLACES);
  Inherited_List_Defered(Implementation(Bicloo_i))==(BICLOO);
  Inherited_List_Sets(Implementation(Bicloo_i))==(PLACES,BICLOO);
  List_Enumerated(Implementation(Bicloo_i))==(OKKO);
  List_Defered(Implementation(Bicloo_i))==(?);
  List_Sets(Implementation(Bicloo_i))==(OKKO);
  Set_Definition(Implementation(Bicloo_i),PLACES)==({pl1,pl2,pl3,pl4,pl5,pl6,pl7,pl8,pl9,pl10});
  Set_Definition(Implementation(Bicloo_i),OKKO)==({OK,KO})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Bicloo_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Bicloo_i))==(?);
  List_HiddenConstants(Implementation(Bicloo_i))==(?);
  External_List_HiddenConstants(Implementation(Bicloo_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Bicloo_i))==(maxBicloo: NAT & maxBicloo>=1 & maxBicloo<MAXINT & BICLOO: FIN(INTEGER) & not(BICLOO = {}) & PLACES: FIN(INTEGER) & not(PLACES = {}));
  Context_List_Properties(Implementation(Bicloo_i))==(btrue);
  Inherited_List_Properties(Implementation(Bicloo_i))==(btrue);
  List_Properties(Implementation(Bicloo_i))==(OKKO: FIN(INTEGER) & not(OKKO = {}))
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Bicloo_i))==(btrue);
  Values_Subs(Implementation(Bicloo_i))==(BICLOO,maxBicloo: 1..10,10);
  List_Values(Implementation(Bicloo_i))==(BICLOO = 1..10;maxBicloo = 10)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Bicloo_i))==(Type(c_velo) == Mvv(SetOf(btype(INTEGER,1,10)*etype(OKKO,0,1)));Type(c_veloCircu) == Mvv(SetOf(btype(INTEGER,1,10)*etype(OKKO,0,1)));Type(c_libres) == Mvv(SetOf(etype(PLACES,?,?)));Type(c_place) == Mvv(SetOf(btype(INTEGER,?,?)*etype(PLACES,?,?))));
  Operations(Implementation(Bicloo_i))==(Type(sortirVelo) == Cst(No_type,atype(BICLOO,?,?));Type(rangerVelo) == Cst(No_type,atype(BICLOO,?,?)*etype(PLACES,?,?)));
  Constants(Implementation(Bicloo_i))==(Type(pl1) == Cst(etype(PLACES,0,9));Type(pl2) == Cst(etype(PLACES,0,9));Type(pl3) == Cst(etype(PLACES,0,9));Type(pl4) == Cst(etype(PLACES,0,9));Type(pl5) == Cst(etype(PLACES,0,9));Type(pl6) == Cst(etype(PLACES,0,9));Type(pl7) == Cst(etype(PLACES,0,9));Type(pl8) == Cst(etype(PLACES,0,9));Type(pl9) == Cst(etype(PLACES,0,9));Type(pl10) == Cst(etype(PLACES,0,9));Type(maxBicloo) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Bicloo_i)) == (OKKO,OK,KO | ? | ? | ? | rangerVelo,sortirVelo | ? | ? | ? | Bicloo_i);
  List_Of_HiddenCst_Ids(Implementation(Bicloo_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Bicloo_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Bicloo_i)) == (c_place,c_libres,c_veloCircu,c_velo | ?);
  List_Of_Ids_SeenBNU(Implementation(Bicloo_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Bicloo_i)) == (Type(OKKO) == Cst(SetOf(etype(OKKO,0,1)));Type(BICLOO) == Cst(SetOf(btype(INTEGER,"[BICLOO","]BICLOO")));Type(PLACES) == Cst(SetOf(etype(PLACES,0,9))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Bicloo_i)) == (Type(OK) == Cst(etype(OKKO,0,1));Type(KO) == Cst(etype(OKKO,0,1));Type(maxBicloo) == Cst(btype(INTEGER,?,?));Type(pl10) == Cst(etype(PLACES,0,9));Type(pl9) == Cst(etype(PLACES,0,9));Type(pl8) == Cst(etype(PLACES,0,9));Type(pl7) == Cst(etype(PLACES,0,9));Type(pl6) == Cst(etype(PLACES,0,9));Type(pl5) == Cst(etype(PLACES,0,9));Type(pl4) == Cst(etype(PLACES,0,9));Type(pl3) == Cst(etype(PLACES,0,9));Type(pl2) == Cst(etype(PLACES,0,9));Type(pl1) == Cst(etype(PLACES,0,9)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Bicloo_i)) == (Type(c_place) == Mvv(SetOf(btype(INTEGER,?,?)*etype(PLACES,?,?)));Type(c_libres) == Mvv(SetOf(etype(PLACES,?,?)));Type(c_veloCircu) == Mvv(SetOf(btype(INTEGER,1,10)*etype(OKKO,0,1)));Type(c_velo) == Mvv(SetOf(btype(INTEGER,1,10)*etype(OKKO,0,1))))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(Bicloo_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(Bicloo_i))==(c_velo: POW(INTEGER*OKKO) & c_veloCircu: POW(INTEGER*OKKO) & c_libres: POW(PLACES) & c_place: POW(INTEGER*PLACES))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
