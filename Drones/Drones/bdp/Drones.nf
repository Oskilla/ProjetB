Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Drones))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Drones))==(Machine(Drones));
  Level(Machine(Drones))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Drones)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Drones))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Drones))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Drones))==(?);
  List_Includes(Machine(Drones))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Drones))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Drones))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Drones))==(?);
  Context_List_Variables(Machine(Drones))==(?);
  Abstract_List_Variables(Machine(Drones))==(?);
  Local_List_Variables(Machine(Drones))==(diffuseImage,droneImage,typeDrone,drone,image);
  List_Variables(Machine(Drones))==(diffuseImage,droneImage,typeDrone,drone,image);
  External_List_Variables(Machine(Drones))==(diffuseImage,droneImage,typeDrone,drone,image)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Drones))==(?);
  Abstract_List_VisibleVariables(Machine(Drones))==(?);
  External_List_VisibleVariables(Machine(Drones))==(?);
  Expanded_List_VisibleVariables(Machine(Drones))==(?);
  List_VisibleVariables(Machine(Drones))==(?);
  Internal_List_VisibleVariables(Machine(Drones))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Drones))==(btrue);
  Gluing_List_Invariant(Machine(Drones))==(btrue);
  Expanded_List_Invariant(Machine(Drones))==(btrue);
  Abstract_List_Invariant(Machine(Drones))==(btrue);
  Context_List_Invariant(Machine(Drones))==(btrue);
  List_Invariant(Machine(Drones))==(image: FIN(IMAGES) & drone: FIN(DRONES) & diffuseImage: FIN(IMAGES) & typeDrone: drone --> TYPES & droneImage: image <-> drone & card(image)<=maxImages & card(drone)<=maxDrones & card(diffuseImage)<=card(image) & (img: diffuseImage => typeDrone(droneImage(img)) = Civil))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Drones))==(btrue);
  Abstract_List_Assertions(Machine(Drones))==(btrue);
  Context_List_Assertions(Machine(Drones))==(btrue);
  List_Assertions(Machine(Drones))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Drones))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Drones))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Drones))==(image,drone,diffuseImage,typeDrone,droneImage:={},{},{},{},{});
  Context_List_Initialisation(Machine(Drones))==(skip);
  List_Initialisation(Machine(Drones))==(image:={} || drone:={} || diffuseImage:={} || typeDrone:={} || droneImage:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Drones))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Drones))==(btrue);
  List_Constraints(Machine(Drones))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Drones))==(ajouterDrone,typeImage,ajoutImage);
  List_Operations(Machine(Drones))==(ajouterDrone,typeImage,ajoutImage)
END
&
THEORY ListInputX IS
  List_Input(Machine(Drones),ajouterDrone)==(dd,tt);
  List_Input(Machine(Drones),typeImage)==(ii);
  List_Input(Machine(Drones),ajoutImage)==(ii,dd)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Drones),ajouterDrone)==(?);
  List_Output(Machine(Drones),typeImage)==(typeImg);
  List_Output(Machine(Drones),ajoutImage)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Drones),ajouterDrone)==(ajouterDrone(dd,tt));
  List_Header(Machine(Drones),typeImage)==(typeImg <-- typeImage(ii));
  List_Header(Machine(Drones),ajoutImage)==(ajoutImage(ii,dd))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Drones),ajouterDrone)==(dd: DRONES & tt: TYPES & dd/:drone & dd|->tt/:typeDrone & card(drone)<maxDrones);
  List_Precondition(Machine(Drones),typeImage)==(ii: IMAGES & ii: image);
  List_Precondition(Machine(Drones),ajoutImage)==(ii: IMAGES & dd: DRONES & dd: drone & ii/:image & card(image)<maxImages)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Drones),ajoutImage)==(ii: IMAGES & dd: DRONES & dd: drone & ii/:image & card(image)<maxImages | image,droneImage:=image\/{ii},droneImage<+{ii|->dd});
  Expanded_List_Substitution(Machine(Drones),typeImage)==(ii: IMAGES & ii: image | typeImg:=typeDrone(droneImage(ii)));
  Expanded_List_Substitution(Machine(Drones),ajouterDrone)==(dd: DRONES & tt: TYPES & dd/:drone & dd|->tt/:typeDrone & card(drone)<maxDrones | typeDrone,drone:=typeDrone<+{dd|->tt},drone\/{dd});
  List_Substitution(Machine(Drones),ajouterDrone)==(typeDrone(dd):=tt || drone:=drone\/{dd});
  List_Substitution(Machine(Drones),typeImage)==(typeImg:=typeDrone(droneImage(ii)));
  List_Substitution(Machine(Drones),ajoutImage)==(image:=image\/{ii} || droneImage(ii):=dd)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Drones))==(maxDrones,maxImages,img);
  Inherited_List_Constants(Machine(Drones))==(?);
  List_Constants(Machine(Drones))==(maxDrones,maxImages,img)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Drones),TYPES)==({Militaire,Civil});
  Context_List_Enumerated(Machine(Drones))==(?);
  Context_List_Defered(Machine(Drones))==(?);
  Context_List_Sets(Machine(Drones))==(?);
  List_Valuable_Sets(Machine(Drones))==(IMAGES,DRONES);
  Inherited_List_Enumerated(Machine(Drones))==(?);
  Inherited_List_Defered(Machine(Drones))==(?);
  Inherited_List_Sets(Machine(Drones))==(?);
  List_Enumerated(Machine(Drones))==(TYPES);
  List_Defered(Machine(Drones))==(IMAGES,DRONES);
  List_Sets(Machine(Drones))==(TYPES,IMAGES,DRONES);
  Set_Definition(Machine(Drones),IMAGES)==(?);
  Set_Definition(Machine(Drones),DRONES)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Drones))==(?);
  Expanded_List_HiddenConstants(Machine(Drones))==(?);
  List_HiddenConstants(Machine(Drones))==(?);
  External_List_HiddenConstants(Machine(Drones))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Drones))==(btrue);
  Context_List_Properties(Machine(Drones))==(btrue);
  Inherited_List_Properties(Machine(Drones))==(btrue);
  List_Properties(Machine(Drones))==(maxDrones: NAT & maxDrones>=0 & maxDrones<MAXINT & maxImages: NAT & maxImages>=0 & maxImages<MAXINT & img: IMAGES & IMAGES: FIN(INTEGER) & not(IMAGES = {}) & DRONES: FIN(INTEGER) & not(DRONES = {}) & TYPES: FIN(INTEGER) & not(TYPES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Drones),ajouterDrone)==(?);
  List_ANY_Var(Machine(Drones),typeImage)==(?);
  List_ANY_Var(Machine(Drones),ajoutImage)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Drones)) == (maxDrones,maxImages,img,TYPES,IMAGES,DRONES,Militaire,Civil | ? | diffuseImage,droneImage,typeDrone,drone,image | ? | ajouterDrone,typeImage,ajoutImage | ? | ? | ? | Drones);
  List_Of_HiddenCst_Ids(Machine(Drones)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Drones)) == (maxDrones,maxImages,img);
  List_Of_VisibleVar_Ids(Machine(Drones)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Drones)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Drones)) == (Type(TYPES) == Cst(SetOf(etype(TYPES,0,1)));Type(IMAGES) == Cst(SetOf(atype(IMAGES,"[IMAGES","]IMAGES")));Type(DRONES) == Cst(SetOf(atype(DRONES,"[DRONES","]DRONES"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Drones)) == (Type(Militaire) == Cst(etype(TYPES,0,1));Type(Civil) == Cst(etype(TYPES,0,1));Type(maxDrones) == Cst(btype(INTEGER,?,?));Type(maxImages) == Cst(btype(INTEGER,?,?));Type(img) == Cst(atype(IMAGES,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Drones)) == (Type(diffuseImage) == Mvl(SetOf(atype(IMAGES,?,?)));Type(droneImage) == Mvl(SetOf(atype(IMAGES,?,?)*atype(DRONES,?,?)));Type(typeDrone) == Mvl(SetOf(atype(DRONES,?,?)*etype(TYPES,0,1)));Type(drone) == Mvl(SetOf(atype(DRONES,?,?)));Type(image) == Mvl(SetOf(atype(IMAGES,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Drones)) == (Type(ajoutImage) == Cst(No_type,atype(IMAGES,?,?)*atype(DRONES,?,?));Type(typeImage) == Cst(etype(TYPES,?,?),atype(IMAGES,?,?));Type(ajouterDrone) == Cst(No_type,atype(DRONES,?,?)*etype(TYPES,?,?)));
  Observers(Machine(Drones)) == (Type(typeImage) == Cst(etype(TYPES,?,?),atype(IMAGES,?,?)))
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
