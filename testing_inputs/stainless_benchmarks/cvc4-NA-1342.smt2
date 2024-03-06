; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9422 () Bool)

(assert start!9422)

(declare-fun b!68439 () Bool)

(declare-fun res!33063 () Bool)

(declare-fun e!37046 () Bool)

(assert (=> b!68439 (=> (not res!33063) (not e!37046))))

(declare-datatypes () ((Formula!43 (And!48 (lhs!932 Formula!43) (rhs!932 Formula!43)) (Literal!42 (id!4823 Int)) (Implies!48 (lhs!933 Formula!43) (rhs!933 Formula!43)) (Or!48 (lhs!934 Formula!43) (rhs!934 Formula!43)) (Not!48 (f!4185 Formula!43)))))

(declare-fun f!3683 () Formula!43)

(assert (=> b!68439 (= res!33063 (and (not (is-And!48 f!3683)) (not (is-Literal!42 f!3683)) (is-Implies!48 f!3683)))))

(declare-fun b!68441 () Bool)

(declare-fun res!33062 () Bool)

(assert (=> b!68441 (=> (not res!33062) (not e!37046))))

(declare-fun inductVal!220 () Bool)

(declare-fun simplifyIsStable!1 (Formula!43) Bool)

(assert (=> b!68441 (= res!33062 (= inductVal!220 (simplifyIsStable!1 (lhs!933 f!3683))))))

(declare-fun b!68442 () Bool)

(declare-fun simplify!1 (Formula!43) Formula!43)

(assert (=> b!68442 (= e!37046 (not (= (simplify!1 f!3683) f!3683)))))

(declare-fun b!68440 () Bool)

(declare-fun res!33065 () Bool)

(assert (=> b!68440 (=> (not res!33065) (not e!37046))))

(declare-fun inductVal!212 () Bool)

(assert (=> b!68440 (= res!33065 (= inductVal!212 (simplifyIsStable!1 (rhs!933 f!3683))))))

(declare-fun res!33064 () Bool)

(assert (=> start!9422 (=> (not res!33064) (not e!37046))))

(declare-fun isSimplified!1 (Formula!43) Bool)

(assert (=> start!9422 (= res!33064 (isSimplified!1 f!3683))))

(assert (=> start!9422 e!37046))

(assert (=> start!9422 true))

(assert (= (and start!9422 res!33064) b!68439))

(assert (= (and b!68439 res!33063) b!68440))

(assert (= (and b!68440 res!33065) b!68441))

(assert (= (and b!68441 res!33062) b!68442))

(declare-fun m!70237 () Bool)

(assert (=> b!68441 m!70237))

(declare-fun m!70239 () Bool)

(assert (=> b!68442 m!70239))

(declare-fun m!70241 () Bool)

(assert (=> b!68440 m!70241))

(declare-fun m!70243 () Bool)

(assert (=> start!9422 m!70243))

(push 1)

(assert (not b!68441))

(assert (not start!9422))

(assert (not b!68440))

(assert (not b!68442))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!53564 () Bool)

(declare-fun e!37061 () Bool)

(assert (=> d!53564 e!37061))

(declare-fun c!15929 () Bool)

(declare-fun lt!13936 () Bool)

(assert (=> d!53564 (= c!15929 (or lt!13936 (is-Literal!42 (lhs!933 f!3683))))))

(declare-fun lt!13932 () Formula!43)

(declare-fun e!37063 () Formula!43)

(assert (=> d!53564 (= lt!13932 e!37063)))

(declare-fun c!15932 () Bool)

(assert (=> d!53564 (= c!15932 (or lt!13936 (is-Literal!42 (lhs!933 f!3683))))))

(declare-fun lt!13934 () Bool)

(declare-fun e!37059 () Bool)

(assert (=> d!53564 (= lt!13934 e!37059)))

(declare-fun c!15928 () Bool)

(assert (=> d!53564 (= c!15928 (or lt!13936 (and (not (is-Literal!42 (lhs!933 f!3683))) (or (is-Implies!48 (lhs!933 f!3683)) (is-Or!48 (lhs!933 f!3683))))))))

(declare-fun lt!13937 () Bool)

(declare-fun e!37062 () Bool)

(assert (=> d!53564 (= lt!13937 e!37062)))

(declare-fun c!15927 () Bool)

(assert (=> d!53564 (= c!15927 (or lt!13936 (not (is-Literal!42 (lhs!933 f!3683)))))))

(assert (=> d!53564 (= lt!13936 (is-And!48 (lhs!933 f!3683)))))

(assert (=> d!53564 (isSimplified!1 (lhs!933 f!3683))))

(assert (=> d!53564 (= (simplifyIsStable!1 (lhs!933 f!3683)) true)))

(declare-fun b!68467 () Bool)

(assert (=> b!68467 (= e!37063 (simplify!1 (lhs!933 f!3683)))))

(declare-fun b!68468 () Bool)

(declare-fun e!37064 () Formula!43)

(declare-fun res!33095 () Formula!43)

(assert (=> b!68468 (= e!37064 res!33095)))

(assert (=> b!68468 true))

(assert (=> b!68468 true))

(declare-fun b!68469 () Bool)

(declare-fun res!33097 () Bool)

(assert (=> b!68469 (= e!37059 res!33097)))

(assert (=> b!68469 true))

(declare-fun b!68470 () Bool)

(declare-fun res!33096 () Bool)

(assert (=> b!68470 (= e!37062 res!33096)))

(assert (=> b!68470 true))

(declare-fun b!68471 () Bool)

(assert (=> b!68471 (= e!37062 (simplifyIsStable!1 (ite lt!13936 (rhs!932 (lhs!933 f!3683)) (ite (is-Implies!48 (lhs!933 f!3683)) (rhs!933 (lhs!933 f!3683)) (ite (is-Or!48 (lhs!933 f!3683)) (rhs!934 (lhs!933 f!3683)) (f!4185 (lhs!933 f!3683)))))))))

(declare-fun b!68472 () Bool)

(declare-fun e!37060 () Bool)

(declare-fun lt!13935 () Formula!43)

(assert (=> b!68472 (= e!37060 (= lt!13935 (lhs!933 f!3683)))))

(declare-fun b!68473 () Bool)

(assert (=> b!68473 (= e!37064 (simplify!1 (lhs!933 f!3683)))))

(declare-fun b!68474 () Bool)

(assert (=> b!68474 (= e!37061 (= lt!13932 (lhs!933 f!3683)))))

(declare-fun b!68475 () Bool)

(assert (=> b!68475 (= e!37061 e!37060)))

(declare-fun c!15930 () Bool)

(declare-fun lt!13933 () Bool)

(assert (=> b!68475 (= c!15930 (or lt!13933 (is-Or!48 (lhs!933 f!3683))))))

(assert (=> b!68475 (= lt!13935 e!37064)))

(declare-fun c!15931 () Bool)

(assert (=> b!68475 (= c!15931 (or lt!13933 (is-Or!48 (lhs!933 f!3683))))))

(assert (=> b!68475 (= lt!13933 (is-Implies!48 (lhs!933 f!3683)))))

(declare-fun b!68476 () Bool)

(assert (=> b!68476 (= e!37059 (simplifyIsStable!1 (ite lt!13936 (lhs!932 (lhs!933 f!3683)) (ite (is-Implies!48 (lhs!933 f!3683)) (lhs!933 (lhs!933 f!3683)) (lhs!934 (lhs!933 f!3683))))))))

(declare-fun b!68477 () Bool)

(assert (=> b!68477 (= e!37060 (= (simplify!1 (lhs!933 f!3683)) (lhs!933 f!3683)))))

(declare-fun b!68478 () Bool)

(declare-fun res!33098 () Formula!43)

(assert (=> b!68478 (= e!37063 res!33098)))

(assert (=> b!68478 true))

(assert (= (and d!53564 c!15927) b!68471))

(assert (= (and d!53564 (not c!15927)) b!68470))

(assert (= (and d!53564 c!15928) b!68476))

(assert (= (and d!53564 (not c!15928)) b!68469))

(assert (= (and d!53564 c!15932) b!68467))

(assert (= (and d!53564 (not c!15932)) b!68478))

(assert (= (and b!68475 c!15931) b!68473))

(assert (= (and b!68475 (not c!15931)) b!68468))

(assert (= (and b!68475 c!15930) b!68472))

(assert (= (and b!68475 (not c!15930)) b!68477))

(assert (= (and d!53564 c!15929) b!68474))

(assert (= (and d!53564 (not c!15929)) b!68475))

(declare-fun m!70245 () Bool)

(assert (=> b!68473 m!70245))

(declare-fun m!70247 () Bool)

(assert (=> b!68476 m!70247))

(assert (=> b!68467 m!70245))

(declare-fun m!70249 () Bool)

(assert (=> d!53564 m!70249))

(assert (=> b!68477 m!70245))

(declare-fun m!70251 () Bool)

(assert (=> b!68471 m!70251))

(assert (=> b!68441 d!53564))

(declare-fun b!68505 () Bool)

(declare-fun e!37085 () Bool)

(declare-fun e!37081 () Bool)

(assert (=> b!68505 (= e!37085 e!37081)))

(declare-fun res!33126 () Bool)

(assert (=> b!68505 (=> (not res!33126) (not e!37081))))

(declare-fun lt!13956 () Bool)

(assert (=> b!68505 (= res!33126 lt!13956)))

(assert (=> b!68505 (= lt!13956 (is-Or!48 f!3683))))

(declare-fun b!68506 () Bool)

(declare-fun e!37082 () Bool)

(declare-fun lt!13955 () Bool)

(assert (=> b!68506 (= e!37082 lt!13955)))

(declare-fun b!68507 () Bool)

(declare-fun res!33127 () Bool)

(assert (=> b!68507 (= e!37082 res!33127)))

(assert (=> b!68507 true))

(assert (=> b!68507 true))

(declare-fun b!68508 () Bool)

(declare-fun e!37088 () Bool)

(declare-fun lt!13958 () Bool)

(assert (=> b!68508 (= e!37088 (isSimplified!1 (ite lt!13958 (rhs!932 f!3683) (rhs!934 f!3683))))))

(declare-fun b!68509 () Bool)

(declare-fun e!37086 () Bool)

(assert (=> b!68509 (= e!37081 e!37086)))

(declare-fun c!15947 () Bool)

(assert (=> b!68509 (= c!15947 (or lt!13956 (and (not (is-Implies!48 f!3683)) (is-Not!48 f!3683))))))

(declare-fun d!53566 () Bool)

(declare-fun c!15945 () Bool)

(declare-fun lt!13954 () Bool)

(assert (=> d!53566 (= c!15945 lt!13954)))

(declare-fun lt!13953 () Bool)

(assert (=> d!53566 (= lt!13953 e!37088)))

(declare-fun c!15944 () Bool)

(declare-fun e!37087 () Bool)

(assert (=> d!53566 (= c!15944 e!37087)))

(declare-fun res!33130 () Bool)

(assert (=> d!53566 (=> res!33130 e!37087)))

(assert (=> d!53566 (= res!33130 lt!13958)))

(assert (=> d!53566 (= lt!13958 (and lt!13954 lt!13955))))

(declare-fun e!37084 () Bool)

(assert (=> d!53566 (= lt!13955 e!37084)))

(declare-fun c!15943 () Bool)

(assert (=> d!53566 (= c!15943 (or lt!13954 (is-Or!48 f!3683) (and (not (is-Implies!48 f!3683)) (is-Not!48 f!3683))))))

(assert (=> d!53566 (= lt!13954 (is-And!48 f!3683))))

(declare-fun e!37083 () Bool)

(assert (=> d!53566 (= (isSimplified!1 f!3683) e!37083)))

(declare-fun b!68510 () Bool)

(assert (=> b!68510 (= e!37087 e!37085)))

(declare-fun res!33124 () Bool)

(assert (=> b!68510 (=> (not res!33124) (not e!37085))))

(assert (=> b!68510 (= res!33124 (not lt!13954))))

(declare-fun b!68511 () Bool)

(declare-fun res!33125 () Bool)

(assert (=> b!68511 (= e!37086 res!33125)))

(assert (=> b!68511 true))

(declare-fun b!68512 () Bool)

(declare-fun res!33128 () Bool)

(assert (=> b!68512 (= e!37088 res!33128)))

(assert (=> b!68512 true))

(declare-fun lt!13957 () Bool)

(declare-fun b!68513 () Bool)

(declare-fun lt!13952 () Bool)

(assert (=> b!68513 (= e!37083 (ite lt!13952 (and lt!13957 lt!13953) (and (not (is-Implies!48 f!3683)) (or (not (is-Not!48 f!3683)) lt!13957))))))

(assert (=> b!68513 (= lt!13957 e!37082)))

(declare-fun c!15946 () Bool)

(assert (=> b!68513 (= c!15946 (or lt!13952 (and (not (is-Implies!48 f!3683)) (is-Not!48 f!3683))))))

(assert (=> b!68513 (= lt!13952 (is-Or!48 f!3683))))

(declare-fun b!68514 () Bool)

(assert (=> b!68514 (= e!37084 (isSimplified!1 (ite lt!13954 (lhs!932 f!3683) (ite (is-Or!48 f!3683) (lhs!934 f!3683) (f!4185 f!3683)))))))

(declare-fun b!68515 () Bool)

(assert (=> b!68515 (= e!37086 lt!13955)))

(declare-fun b!68516 () Bool)

(assert (=> b!68516 (= e!37083 (and lt!13955 lt!13953))))

(declare-fun b!68517 () Bool)

(declare-fun res!33129 () Bool)

(assert (=> b!68517 (= e!37084 res!33129)))

(assert (=> b!68517 true))

(assert (= (and d!53566 c!15943) b!68514))

(assert (= (and d!53566 (not c!15943)) b!68517))

(assert (= (and d!53566 (not res!33130)) b!68510))

(assert (= (and b!68510 res!33124) b!68505))

(assert (= (and b!68505 res!33126) b!68509))

(assert (= (and b!68509 c!15947) b!68515))

(assert (= (and b!68509 (not c!15947)) b!68511))

(assert (= (and d!53566 c!15944) b!68508))

(assert (= (and d!53566 (not c!15944)) b!68512))

(assert (= (and b!68513 c!15946) b!68506))

(assert (= (and b!68513 (not c!15946)) b!68507))

(assert (= (and d!53566 c!15945) b!68516))

(assert (= (and d!53566 (not c!15945)) b!68513))

(declare-fun m!70253 () Bool)

(assert (=> b!68508 m!70253))

(declare-fun m!70255 () Bool)

(assert (=> b!68514 m!70255))

(assert (=> start!9422 d!53566))

(declare-fun d!53568 () Bool)

(declare-fun e!37091 () Bool)

(assert (=> d!53568 e!37091))

(declare-fun c!15950 () Bool)

(declare-fun lt!13963 () Bool)

(assert (=> d!53568 (= c!15950 (or lt!13963 (is-Literal!42 (rhs!933 f!3683))))))

(declare-fun lt!13959 () Formula!43)

(declare-fun e!37093 () Formula!43)

(assert (=> d!53568 (= lt!13959 e!37093)))

(declare-fun c!15953 () Bool)

(assert (=> d!53568 (= c!15953 (or lt!13963 (is-Literal!42 (rhs!933 f!3683))))))

(declare-fun lt!13961 () Bool)

(declare-fun e!37089 () Bool)

(assert (=> d!53568 (= lt!13961 e!37089)))

(declare-fun c!15949 () Bool)

(assert (=> d!53568 (= c!15949 (or lt!13963 (and (not (is-Literal!42 (rhs!933 f!3683))) (or (is-Implies!48 (rhs!933 f!3683)) (is-Or!48 (rhs!933 f!3683))))))))

(declare-fun lt!13964 () Bool)

(declare-fun e!37092 () Bool)

(assert (=> d!53568 (= lt!13964 e!37092)))

(declare-fun c!15948 () Bool)

(assert (=> d!53568 (= c!15948 (or lt!13963 (not (is-Literal!42 (rhs!933 f!3683)))))))

(assert (=> d!53568 (= lt!13963 (is-And!48 (rhs!933 f!3683)))))

(assert (=> d!53568 (isSimplified!1 (rhs!933 f!3683))))

(assert (=> d!53568 (= (simplifyIsStable!1 (rhs!933 f!3683)) true)))

(declare-fun b!68518 () Bool)

(assert (=> b!68518 (= e!37093 (simplify!1 (rhs!933 f!3683)))))

(declare-fun b!68519 () Bool)

(declare-fun e!37094 () Formula!43)

(declare-fun res!33131 () Formula!43)

(assert (=> b!68519 (= e!37094 res!33131)))

(assert (=> b!68519 true))

(assert (=> b!68519 true))

(declare-fun b!68520 () Bool)

(declare-fun res!33133 () Bool)

(assert (=> b!68520 (= e!37089 res!33133)))

(assert (=> b!68520 true))

(declare-fun b!68521 () Bool)

(declare-fun res!33132 () Bool)

(assert (=> b!68521 (= e!37092 res!33132)))

(assert (=> b!68521 true))

(declare-fun b!68522 () Bool)

(assert (=> b!68522 (= e!37092 (simplifyIsStable!1 (ite lt!13963 (rhs!932 (rhs!933 f!3683)) (ite (is-Implies!48 (rhs!933 f!3683)) (rhs!933 (rhs!933 f!3683)) (ite (is-Or!48 (rhs!933 f!3683)) (rhs!934 (rhs!933 f!3683)) (f!4185 (rhs!933 f!3683)))))))))

(declare-fun b!68523 () Bool)

(declare-fun e!37090 () Bool)

(declare-fun lt!13962 () Formula!43)

(assert (=> b!68523 (= e!37090 (= lt!13962 (rhs!933 f!3683)))))

(declare-fun b!68524 () Bool)

(assert (=> b!68524 (= e!37094 (simplify!1 (rhs!933 f!3683)))))

(declare-fun b!68525 () Bool)

(assert (=> b!68525 (= e!37091 (= lt!13959 (rhs!933 f!3683)))))

(declare-fun b!68526 () Bool)

(assert (=> b!68526 (= e!37091 e!37090)))

(declare-fun c!15951 () Bool)

(declare-fun lt!13960 () Bool)

(assert (=> b!68526 (= c!15951 (or lt!13960 (is-Or!48 (rhs!933 f!3683))))))

(assert (=> b!68526 (= lt!13962 e!37094)))

(declare-fun c!15952 () Bool)

(assert (=> b!68526 (= c!15952 (or lt!13960 (is-Or!48 (rhs!933 f!3683))))))

(assert (=> b!68526 (= lt!13960 (is-Implies!48 (rhs!933 f!3683)))))

(declare-fun b!68527 () Bool)

(assert (=> b!68527 (= e!37089 (simplifyIsStable!1 (ite lt!13963 (lhs!932 (rhs!933 f!3683)) (ite (is-Implies!48 (rhs!933 f!3683)) (lhs!933 (rhs!933 f!3683)) (lhs!934 (rhs!933 f!3683))))))))

(declare-fun b!68528 () Bool)

(assert (=> b!68528 (= e!37090 (= (simplify!1 (rhs!933 f!3683)) (rhs!933 f!3683)))))

(declare-fun b!68529 () Bool)

(declare-fun res!33134 () Formula!43)

(assert (=> b!68529 (= e!37093 res!33134)))

(assert (=> b!68529 true))

(assert (= (and d!53568 c!15948) b!68522))

(assert (= (and d!53568 (not c!15948)) b!68521))

(assert (= (and d!53568 c!15949) b!68527))

(assert (= (and d!53568 (not c!15949)) b!68520))

(assert (= (and d!53568 c!15953) b!68518))

(assert (= (and d!53568 (not c!15953)) b!68529))

(assert (= (and b!68526 c!15952) b!68524))

(assert (= (and b!68526 (not c!15952)) b!68519))

(assert (= (and b!68526 c!15951) b!68523))

(assert (= (and b!68526 (not c!15951)) b!68528))

(assert (= (and d!53568 c!15950) b!68525))

(assert (= (and d!53568 (not c!15950)) b!68526))

(declare-fun m!70257 () Bool)

(assert (=> b!68524 m!70257))

(declare-fun m!70259 () Bool)

(assert (=> b!68527 m!70259))

(assert (=> b!68518 m!70257))

(declare-fun m!70261 () Bool)

(assert (=> d!53568 m!70261))

(assert (=> b!68528 m!70257))

(declare-fun m!70263 () Bool)

(assert (=> b!68522 m!70263))

(assert (=> b!68440 d!53568))

(declare-fun b!68558 () Bool)

(declare-fun e!37110 () Formula!43)

(declare-fun lt!13990 () Bool)

(assert (=> b!68558 (= e!37110 (simplify!1 (ite lt!13990 (lhs!932 f!3683) (ite (is-Or!48 f!3683) (lhs!934 f!3683) (ite (is-Implies!48 f!3683) (lhs!933 f!3683) (f!4185 f!3683))))))))

(declare-fun b!68559 () Bool)

(declare-fun e!37114 () Formula!43)

(assert (=> b!68559 (= e!37114 (simplify!1 (ite lt!13990 (rhs!932 f!3683) (ite (is-Or!48 f!3683) (rhs!934 f!3683) (rhs!933 f!3683)))))))

(declare-fun b!68560 () Bool)

(declare-fun e!37109 () Formula!43)

(declare-fun lt!13988 () Formula!43)

(assert (=> b!68560 (= e!37109 lt!13988)))

(declare-fun e!37112 () Formula!43)

(declare-fun lt!13984 () Bool)

(declare-fun lt!13986 () Formula!43)

(declare-fun b!68561 () Bool)

(declare-fun lt!13985 () Formula!43)

(assert (=> b!68561 (= e!37112 (ite lt!13984 (Or!48 (Not!48 lt!13985) lt!13986) (ite (is-Not!48 f!3683) (Not!48 lt!13985) f!3683)))))

(declare-fun e!37115 () Formula!43)

(assert (=> b!68561 (= lt!13985 e!37115)))

(declare-fun c!15972 () Bool)

(assert (=> b!68561 (= c!15972 (or lt!13984 (is-Not!48 f!3683)))))

(assert (=> b!68561 (= lt!13984 (is-Implies!48 f!3683))))

(declare-fun b!68562 () Bool)

(declare-fun lt!13983 () Formula!43)

(assert (=> b!68562 (= e!37115 lt!13983)))

(declare-fun b!68563 () Bool)

(declare-fun res!33161 () Formula!43)

(assert (=> b!68563 (= e!37115 res!33161)))

(assert (=> b!68563 true))

(assert (=> b!68563 true))

(declare-fun b!68564 () Bool)

(declare-fun res!33164 () Formula!43)

(assert (=> b!68564 (= e!37114 res!33164)))

(assert (=> b!68564 true))

(declare-fun b!68565 () Bool)

(declare-fun e!37111 () Formula!43)

(declare-fun lt!13987 () Formula!43)

(assert (=> b!68565 (= e!37111 (And!48 lt!13987 lt!13988))))

(declare-fun d!53570 () Bool)

(declare-fun lt!13991 () Formula!43)

(assert (=> d!53570 (isSimplified!1 lt!13991)))

(assert (=> d!53570 (= lt!13991 e!37111)))

(declare-fun c!15968 () Bool)

(assert (=> d!53570 (= c!15968 lt!13990)))

(assert (=> d!53570 (= lt!13988 e!37114)))

(declare-fun c!15971 () Bool)

(assert (=> d!53570 (= c!15971 (or lt!13990 (is-Or!48 f!3683) (is-Implies!48 f!3683)))))

(assert (=> d!53570 (= lt!13987 e!37110)))

(declare-fun c!15974 () Bool)

(assert (=> d!53570 (= c!15974 (or lt!13990 (is-Or!48 f!3683) (is-Implies!48 f!3683) (is-Not!48 f!3683)))))

(assert (=> d!53570 (= lt!13990 (is-And!48 f!3683))))

(assert (=> d!53570 (= (simplify!1 f!3683) lt!13991)))

(declare-fun b!68566 () Bool)

(assert (=> b!68566 (= e!37111 e!37112)))

(declare-fun c!15973 () Bool)

(declare-fun lt!13989 () Bool)

(assert (=> b!68566 (= c!15973 lt!13989)))

(assert (=> b!68566 (= lt!13986 e!37109)))

(declare-fun c!15969 () Bool)

(assert (=> b!68566 (= c!15969 (or lt!13989 (is-Implies!48 f!3683)))))

(declare-fun e!37113 () Formula!43)

(assert (=> b!68566 (= lt!13983 e!37113)))

(declare-fun c!15970 () Bool)

(assert (=> b!68566 (= c!15970 (or lt!13989 (is-Implies!48 f!3683) (is-Not!48 f!3683)))))

(assert (=> b!68566 (= lt!13989 (is-Or!48 f!3683))))

(declare-fun b!68567 () Bool)

(assert (=> b!68567 (= e!37113 lt!13987)))

(declare-fun b!68568 () Bool)

(declare-fun res!33163 () Formula!43)

(assert (=> b!68568 (= e!37109 res!33163)))

(assert (=> b!68568 true))

(declare-fun b!68569 () Bool)

(declare-fun res!33160 () Formula!43)

(assert (=> b!68569 (= e!37110 res!33160)))

(assert (=> b!68569 true))

(declare-fun b!68570 () Bool)

(declare-fun res!33162 () Formula!43)

(assert (=> b!68570 (= e!37113 res!33162)))

(assert (=> b!68570 true))

(declare-fun b!68571 () Bool)

(assert (=> b!68571 (= e!37112 (Or!48 lt!13983 lt!13986))))

(assert (= (and d!53570 c!15974) b!68558))

(assert (= (and d!53570 (not c!15974)) b!68569))

(assert (= (and d!53570 c!15971) b!68559))

(assert (= (and d!53570 (not c!15971)) b!68564))

(assert (= (and b!68566 c!15970) b!68567))

(assert (= (and b!68566 (not c!15970)) b!68570))

(assert (= (and b!68566 c!15969) b!68560))

(assert (= (and b!68566 (not c!15969)) b!68568))

(assert (= (and b!68561 c!15972) b!68562))

(assert (= (and b!68561 (not c!15972)) b!68563))

(assert (= (and b!68566 c!15973) b!68571))

(assert (= (and b!68566 (not c!15973)) b!68561))

(assert (= (and d!53570 c!15968) b!68565))

(assert (= (and d!53570 (not c!15968)) b!68566))

(declare-fun m!70265 () Bool)

(assert (=> b!68558 m!70265))

(declare-fun m!70267 () Bool)

(assert (=> b!68559 m!70267))

(declare-fun m!70269 () Bool)

(assert (=> d!53570 m!70269))

(assert (=> b!68442 d!53570))

(push 1)

(assert (not b!68508))

(assert (not b!68477))

(assert (not b!68558))

(assert (not b!68528))

(assert (not b!68559))

(assert (not b!68467))

(assert (not b!68514))

(assert (not d!53568))

(assert (not b!68476))

(assert (not d!53564))

(assert (not b!68524))

(assert (not d!53570))

(assert (not b!68522))

(assert (not b!68471))

(assert (not b!68473))

(assert (not b!68518))

(assert (not b!68527))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

