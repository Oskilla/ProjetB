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
  Internal_List_Operations(Machine(Bicloo))==(rangerVelo,sortirVelo);
  List_Operations(Machine(Bicloo))==(rangerVelo,sortirVelo)
END
&
THEORY ListInputX IS
  List_Input(Machine(Bicloo),rangerVelo)==(vv,pl);
  List_Input(Machine(Bicloo),sortirVelo)==(vv)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Bicloo),rangerVelo)==(?);
  List_Output(Machine(Bicloo),sortirVelo)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Bicloo),rangerVelo)==(rangerVelo(vv,pl));
  List_Header(Machine(Bicloo),sortirVelo)==(sortirVelo(vv))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Bicloo),rangerVelo)==(vv: BICLOO & pl: PLACES & vv: veloCircu & vv/:dom(place) & card(libres)-1>=0 & pl: libres & pl/:ran(place));
  List_Precondition(Machine(Bicloo),sortirVelo)==(vv: BICLOO & vv: velo & vv/:veloCircu & vv: dom(place) & card(veloCircu)+1<=card(velo) & card(libres)+1<=card(velo))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Bicloo),sortirVelo)==(vv: BICLOO & vv: velo & vv/:veloCircu & vv: dom(place) & card(veloCircu)+1<=card(velo) & card(libres)+1<=card(velo) | libres,place,veloCircu:=libres\/{place(vv)},{vv}<<|place,veloCircu\/{vv});
  Expanded_List_Substitution(Machine(Bicloo),rangerVelo)==(vv: BICLOO & pl: PLACES & vv: veloCircu & vv/:dom(place) & card(libres)-1>=0 & pl: libres & pl/:ran(place) | place,libres,veloCircu:=place<+{vv|->pl},libres-{pl},veloCircu-{vv});
  List_Substitution(Machine(Bicloo),rangerVelo)==(place(vv):=pl || libres:=libres-{pl} || veloCircu:=veloCircu-{vv});
  List_Substitution(Machine(Bicloo),sortirVelo)==(libres:=libres\/{place(vv)} || place:={vv}<<|place || veloCircu:=veloCircu\/{vv})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Bicloo))==(maxBicloo);
  Inherited_List_Constants(Machine(Bicloo))==(?);
  List_Constants(Machine(Bicloo))==(maxBicloo)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Bicloo),PLACES)==(?);
  Context_List_Enumerated(Machine(Bicloo))==(?);
  Context_List_Defered(Machine(Bicloo))==(?);
  Context_List_Sets(Machine(Bicloo))==(?);
  List_Valuable_Sets(Machine(Bicloo))==(PLACES,BICLOO);
  Inherited_List_Enumerated(Machine(Bicloo))==(?);
  Inherited_List_Defered(Machine(Bicloo))==(?);
  Inherited_List_Sets(Machine(Bicloo))==(?);
  List_Enumerated(Machine(Bicloo))==(?);
  List_Defered(Machine(Bicloo))==(PLACES,BICLOO);
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
  List_Properties(Machine(Bicloo))==(maxBicloo: NAT & maxBicloo>=1 & maxBicloo<MAXINT & PLACES: FIN(INTEGER) & not(PLACES = {}) & BICLOO: FIN(INTEGER) & not(BICLOO = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Bicloo),rangerVelo)==(?);
  List_ANY_Var(Machine(Bicloo),sortirVelo)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Bicloo)) == (maxBicloo,PLACES,BICLOO | ? | place,libres,veloCircu,velo | ? | rangerVelo,sortirVelo | ? | ? | ? | Bicloo);
  List_Of_HiddenCst_Ids(Machine(Bicloo)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Bicloo)) == (maxBicloo);
  List_Of_VisibleVar_Ids(Machine(Bicloo)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Bicloo)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Bicloo)) == (Type(PLACES) == Cst(SetOf(atype(PLACES,"[PLACES","]PLACES")));Type(BICLOO) == Cst(SetOf(atype(BICLOO,"[BICLOO","]BICLOO"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Bicloo)) == (Type(maxBicloo) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Bicloo)) == (Type(place) == Mvl(SetOf(atype(BICLOO,?,?)*atype(PLACES,?,?)));Type(libres) == Mvl(SetOf(atype(PLACES,?,?)));Type(veloCircu) == Mvl(SetOf(atype(BICLOO,?,?)));Type(velo) == Mvl(SetOf(atype(BICLOO,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Bicloo)) == (Type(sortirVelo) == Cst(No_type,atype(BICLOO,?,?));Type(rangerVelo) == Cst(No_type,atype(BICLOO,?,?)*atype(PLACES,?,?)))
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
