; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10228 () Bool)

(assert start!10228)

(declare-fun b!74458 () Bool)

(declare-fun res!36697 () Bool)

(declare-fun e!40236 () Bool)

(assert (=> b!74458 (=> (not res!36697) (not e!40236))))

(declare-datatypes () ((Formula!76 (Implies!80 (lhs!1341 Formula!76) (rhs!1341 Formula!76)) (And!80 (lhs!1342 Formula!76) (rhs!1342 Formula!76)) (Or!80 (lhs!1343 Formula!76) (rhs!1343 Formula!76)) (Literal!74 (id!4937 (_ BitVec 32))) (Not!80 (f!4679 Formula!76)))))

(declare-fun f!4611 () Formula!76)

(assert (=> b!74458 (= res!36697 (and (not (is-Implies!80 f!4611)) (not (is-And!80 f!4611)) (is-Or!80 f!4611)))))

(declare-fun b!74459 () Bool)

(declare-fun res!36694 () Bool)

(assert (=> b!74459 (=> (not res!36694) (not e!40236))))

(declare-fun inductVal!769 () Bool)

(declare-fun nnfIsStable!0 (Formula!76) Bool)

(assert (=> b!74459 (= res!36694 (= inductVal!769 (nnfIsStable!0 (rhs!1343 f!4611))))))

(declare-fun b!74460 () Bool)

(declare-fun res!36695 () Bool)

(assert (=> b!74460 (=> (not res!36695) (not e!40236))))

(declare-fun inductVal!777 () Bool)

(assert (=> b!74460 (= res!36695 (= inductVal!777 (nnfIsStable!0 (lhs!1343 f!4611))))))

(declare-fun res!36696 () Bool)

(assert (=> start!10228 (=> (not res!36696) (not e!40236))))

(declare-fun isNNF!0 (Formula!76) Bool)

(assert (=> start!10228 (= res!36696 (isNNF!0 f!4611))))

(assert (=> start!10228 e!40236))

(assert (=> start!10228 true))

(declare-fun b!74461 () Bool)

(declare-fun nnf!0 (Formula!76) Formula!76)

(assert (=> b!74461 (= e!40236 (not (= (nnf!0 f!4611) f!4611)))))

(assert (= (and start!10228 res!36696) b!74458))

(assert (= (and b!74458 res!36697) b!74459))

(assert (= (and b!74459 res!36694) b!74460))

(assert (= (and b!74460 res!36695) b!74461))

(declare-fun m!72952 () Bool)

(assert (=> b!74459 m!72952))

(declare-fun m!72954 () Bool)

(assert (=> b!74460 m!72954))

(declare-fun m!72956 () Bool)

(assert (=> start!10228 m!72956))

(declare-fun m!72958 () Bool)

(assert (=> b!74461 m!72958))

(push 1)

(assert (not start!10228))

(assert (not b!74459))

(assert (not b!74461))

(assert (not b!74460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!74510 () Bool)

(declare-fun e!40271 () Bool)

(assert (=> b!74510 (= e!40271 (or (and (is-Not!80 f!4611) (is-Literal!74 (f!4679 f!4611))) (not (is-Not!80 f!4611))))))

(declare-fun b!74511 () Bool)

(declare-fun e!40267 () Formula!76)

(assert (=> b!74511 (= e!40267 (rhs!1342 f!4611))))

(declare-fun b!74512 () Bool)

(declare-fun e!40269 () Bool)

(assert (=> b!74512 (= e!40269 (isNNF!0 e!40267))))

(declare-fun c!18167 () Bool)

(declare-fun lt!16032 () Bool)

(assert (=> b!74512 (= c!18167 lt!16032)))

(declare-fun b!74513 () Bool)

(declare-fun e!40266 () Bool)

(declare-fun res!36740 () Bool)

(assert (=> b!74513 (= e!40266 res!36740)))

(assert (=> b!74513 true))

(declare-fun b!74514 () Bool)

(declare-fun e!40272 () Bool)

(declare-fun lt!16029 () Bool)

(assert (=> b!74514 (= e!40272 (isNNF!0 (ite lt!16029 (lhs!1342 f!4611) (ite (is-Or!80 f!4611) (lhs!1343 f!4611) (lhs!1341 f!4611)))))))

(declare-fun b!74515 () Bool)

(declare-fun e!40270 () Bool)

(declare-fun lt!16031 () Bool)

(assert (=> b!74515 (= e!40270 lt!16031)))

(declare-fun b!74516 () Bool)

(declare-fun e!40274 () Formula!76)

(assert (=> b!74516 (= e!40267 e!40274)))

(declare-fun c!18166 () Bool)

(declare-fun e!40277 () Bool)

(assert (=> b!74516 (= c!18166 e!40277)))

(declare-fun res!36738 () Bool)

(assert (=> b!74516 (=> (not res!36738) (not e!40277))))

(declare-fun lt!16025 () Bool)

(assert (=> b!74516 (= res!36738 lt!16025)))

(assert (=> b!74516 (= lt!16025 (is-Or!80 f!4611))))

(declare-fun b!74517 () Bool)

(declare-fun res!36733 () Bool)

(assert (=> b!74517 (= e!40269 res!36733)))

(assert (=> b!74517 true))

(declare-fun b!74518 () Bool)

(declare-fun e!40276 () Bool)

(assert (=> b!74518 (= e!40276 e!40270)))

(declare-fun c!18158 () Bool)

(declare-fun lt!16030 () Bool)

(declare-fun lt!16026 () Bool)

(assert (=> b!74518 (= c!18158 (or (and lt!16030 lt!16026) (and (not lt!16030) (is-Implies!80 f!4611) lt!16026)))))

(declare-fun b!74519 () Bool)

(assert (=> b!74519 (= e!40274 (rhs!1343 f!4611))))

(declare-fun b!74520 () Bool)

(declare-fun e!40268 () Bool)

(assert (=> b!74520 (= e!40268 e!40271)))

(declare-fun c!18163 () Bool)

(assert (=> b!74520 (= c!18163 (or lt!16030 (is-Implies!80 f!4611)))))

(declare-fun e!40278 () Bool)

(assert (=> b!74520 (= lt!16026 e!40278)))

(declare-fun c!18164 () Bool)

(assert (=> b!74520 (= c!18164 (or lt!16030 (is-Implies!80 f!4611)))))

(assert (=> b!74520 (= lt!16030 (is-Or!80 f!4611))))

(declare-fun b!74521 () Bool)

(declare-fun e!40273 () Bool)

(declare-fun lt!16027 () Bool)

(declare-fun lt!16033 () Bool)

(assert (=> b!74521 (= e!40273 (or (and lt!16033 lt!16027) (and (not lt!16033) (is-Implies!80 f!4611) lt!16027)))))

(assert (=> b!74521 (= lt!16027 e!40266)))

(declare-fun c!18160 () Bool)

(assert (=> b!74521 (= c!18160 (or lt!16033 (is-Implies!80 f!4611)))))

(assert (=> b!74521 (= lt!16033 (is-Or!80 f!4611))))

(declare-fun b!74522 () Bool)

(assert (=> b!74522 (= e!40271 e!40276)))

(declare-fun res!36732 () Bool)

(assert (=> b!74522 (=> (not res!36732) (not e!40276))))

(assert (=> b!74522 (= res!36732 lt!16026)))

(declare-fun b!74523 () Bool)

(declare-fun res!36736 () Bool)

(assert (=> b!74523 (= e!40272 res!36736)))

(assert (=> b!74523 true))

(declare-fun b!74524 () Bool)

(declare-fun lt!16028 () Bool)

(assert (=> b!74524 (= e!40278 lt!16028)))

(declare-fun b!74525 () Bool)

(declare-fun res!36739 () Bool)

(assert (=> b!74525 (= e!40278 res!36739)))

(assert (=> b!74525 true))

(declare-fun b!74526 () Bool)

(declare-fun e!40275 () Bool)

(declare-fun res!36741 () Bool)

(assert (=> b!74526 (= e!40275 res!36741)))

(assert (=> b!74526 true))

(declare-fun b!74527 () Bool)

(assert (=> b!74527 (= e!40275 lt!16028)))

(declare-fun b!74528 () Bool)

(assert (=> b!74528 (= e!40277 e!40275)))

(declare-fun c!18165 () Bool)

(assert (=> b!74528 (= c!18165 (or lt!16025 (is-Implies!80 f!4611)))))

(declare-fun b!74529 () Bool)

(declare-fun res!36734 () Bool)

(assert (=> b!74529 (= e!40270 res!36734)))

(assert (=> b!74529 true))

(assert (=> b!74529 true))

(declare-fun b!74530 () Bool)

(declare-fun e!40265 () Bool)

(assert (=> b!74530 (= e!40265 e!40273)))

(declare-fun res!36737 () Bool)

(assert (=> b!74530 (=> (not res!36737) (not e!40273))))

(assert (=> b!74530 (= res!36737 (not lt!16029))))

(declare-fun d!54807 () Bool)

(declare-fun c!18161 () Bool)

(assert (=> d!54807 (= c!18161 lt!16029)))

(assert (=> d!54807 (= lt!16031 e!40269)))

(declare-fun c!18159 () Bool)

(assert (=> d!54807 (= c!18159 e!40265)))

(declare-fun res!36735 () Bool)

(assert (=> d!54807 (=> res!36735 e!40265)))

(assert (=> d!54807 (= res!36735 lt!16032)))

(assert (=> d!54807 (= lt!16032 (and lt!16029 lt!16028))))

(assert (=> d!54807 (= lt!16028 e!40272)))

(declare-fun c!18162 () Bool)

(assert (=> d!54807 (= c!18162 (or lt!16029 (is-Or!80 f!4611) (is-Implies!80 f!4611)))))

(assert (=> d!54807 (= lt!16029 (is-And!80 f!4611))))

(assert (=> d!54807 (= (isNNF!0 f!4611) e!40268)))

(declare-fun b!74531 () Bool)

(assert (=> b!74531 (= e!40268 (and lt!16028 lt!16031))))

(declare-fun b!74532 () Bool)

(assert (=> b!74532 (= e!40274 (rhs!1341 f!4611))))

(declare-fun b!74533 () Bool)

(assert (=> b!74533 (= e!40266 lt!16028)))

(assert (= (and d!54807 c!18162) b!74514))

(assert (= (and d!54807 (not c!18162)) b!74523))

(assert (= (and d!54807 (not res!36735)) b!74530))

(assert (= (and b!74530 res!36737) b!74521))

(assert (= (and b!74521 c!18160) b!74533))

(assert (= (and b!74521 (not c!18160)) b!74513))

(assert (= (and b!74516 res!36738) b!74528))

(assert (= (and b!74528 c!18165) b!74527))

(assert (= (and b!74528 (not c!18165)) b!74526))

(assert (= (and b!74516 c!18166) b!74519))

(assert (= (and b!74516 (not c!18166)) b!74532))

(assert (= (and b!74512 c!18167) b!74511))

(assert (= (and b!74512 (not c!18167)) b!74516))

(assert (= (and d!54807 c!18159) b!74512))

(assert (= (and d!54807 (not c!18159)) b!74517))

(assert (= (and b!74520 c!18164) b!74524))

(assert (= (and b!74520 (not c!18164)) b!74525))

(assert (= (and b!74522 res!36732) b!74518))

(assert (= (and b!74518 c!18158) b!74515))

(assert (= (and b!74518 (not c!18158)) b!74529))

(assert (= (and b!74520 c!18163) b!74522))

(assert (= (and b!74520 (not c!18163)) b!74510))

(assert (= (and d!54807 c!18161) b!74531))

(assert (= (and d!54807 (not c!18161)) b!74520))

(declare-fun m!72960 () Bool)

(assert (=> b!74512 m!72960))

(declare-fun m!72962 () Bool)

(assert (=> b!74514 m!72962))

(assert (=> start!10228 d!54807))

(declare-fun b!74558 () Bool)

(declare-fun e!40294 () Bool)

(declare-fun lt!16045 () Formula!76)

(assert (=> b!74558 (= e!40294 (= lt!16045 (rhs!1343 f!4611)))))

(declare-fun b!74559 () Bool)

(declare-fun e!40292 () Bool)

(assert (=> b!74559 (= e!40294 e!40292)))

(declare-fun c!18181 () Bool)

(declare-fun lt!16047 () Bool)

(assert (=> b!74559 (= c!18181 (or lt!16047 (is-Or!80 (rhs!1343 f!4611))))))

(assert (=> b!74559 (= lt!16047 (is-And!80 (rhs!1343 f!4611)))))

(declare-fun b!74560 () Bool)

(declare-fun e!40293 () Bool)

(declare-fun res!36772 () Bool)

(assert (=> b!74560 (= e!40293 res!36772)))

(assert (=> b!74560 true))

(declare-fun b!74561 () Bool)

(assert (=> b!74561 (= e!40292 (= (nnf!0 (rhs!1343 f!4611)) (rhs!1343 f!4611)))))

(declare-fun b!74562 () Bool)

(declare-fun e!40296 () Formula!76)

(declare-fun res!36773 () Formula!76)

(assert (=> b!74562 (= e!40296 res!36773)))

(assert (=> b!74562 true))

(assert (=> b!74562 true))

(declare-fun b!74563 () Bool)

(declare-fun lt!16048 () Bool)

(assert (=> b!74563 (= e!40293 (nnfIsStable!0 (ite lt!16048 (lhs!1341 (rhs!1343 f!4611)) (ite (is-And!80 (rhs!1343 f!4611)) (lhs!1342 (rhs!1343 f!4611)) (lhs!1343 (rhs!1343 f!4611))))))))

(declare-fun d!54809 () Bool)

(assert (=> d!54809 e!40294))

(declare-fun c!18185 () Bool)

(assert (=> d!54809 (= c!18185 lt!16048)))

(declare-fun e!40291 () Formula!76)

(assert (=> d!54809 (= lt!16045 e!40291)))

(declare-fun c!18180 () Bool)

(assert (=> d!54809 (= c!18180 (or lt!16048 (is-And!80 (rhs!1343 f!4611)) (is-Or!80 (rhs!1343 f!4611))))))

(declare-fun lt!16046 () Bool)

(assert (=> d!54809 (= lt!16046 e!40293)))

(declare-fun c!18183 () Bool)

(assert (=> d!54809 (= c!18183 (or lt!16048 (is-And!80 (rhs!1343 f!4611)) (is-Or!80 (rhs!1343 f!4611))))))

(declare-fun lt!16044 () Bool)

(declare-fun e!40295 () Bool)

(assert (=> d!54809 (= lt!16044 e!40295)))

(declare-fun c!18184 () Bool)

(assert (=> d!54809 (= c!18184 (or lt!16048 (is-And!80 (rhs!1343 f!4611)) (is-Or!80 (rhs!1343 f!4611)) (not (is-Literal!74 (rhs!1343 f!4611)))))))

(assert (=> d!54809 (= lt!16048 (is-Implies!80 (rhs!1343 f!4611)))))

(assert (=> d!54809 (isNNF!0 (rhs!1343 f!4611))))

(assert (=> d!54809 (= (nnfIsStable!0 (rhs!1343 f!4611)) true)))

(declare-fun b!74564 () Bool)

(assert (=> b!74564 (= e!40291 (nnf!0 (rhs!1343 f!4611)))))

(declare-fun b!74565 () Bool)

(declare-fun res!36771 () Formula!76)

(assert (=> b!74565 (= e!40291 res!36771)))

(assert (=> b!74565 true))

(declare-fun b!74566 () Bool)

(assert (=> b!74566 (= e!40295 (nnfIsStable!0 (ite lt!16048 (rhs!1341 (rhs!1343 f!4611)) (ite (is-And!80 (rhs!1343 f!4611)) (rhs!1342 (rhs!1343 f!4611)) (ite (is-Or!80 (rhs!1343 f!4611)) (rhs!1343 (rhs!1343 f!4611)) (f!4679 (rhs!1343 f!4611)))))))))

(declare-fun b!74567 () Bool)

(assert (=> b!74567 (= e!40296 lt!16045)))

(declare-fun b!74568 () Bool)

(assert (=> b!74568 (= e!40292 (= e!40296 (rhs!1343 f!4611)))))

(declare-fun c!18182 () Bool)

(assert (=> b!74568 (= c!18182 (or lt!16047 (is-Or!80 (rhs!1343 f!4611))))))

(declare-fun b!74569 () Bool)

(declare-fun res!36774 () Bool)

(assert (=> b!74569 (= e!40295 res!36774)))

(assert (=> b!74569 true))

(assert (= (and d!54809 c!18184) b!74566))

(assert (= (and d!54809 (not c!18184)) b!74569))

(assert (= (and d!54809 c!18183) b!74563))

(assert (= (and d!54809 (not c!18183)) b!74560))

(assert (= (and d!54809 c!18180) b!74564))

(assert (= (and d!54809 (not c!18180)) b!74565))

(assert (= (and b!74568 c!18182) b!74567))

(assert (= (and b!74568 (not c!18182)) b!74562))

(assert (= (and b!74559 c!18181) b!74568))

(assert (= (and b!74559 (not c!18181)) b!74561))

(assert (= (and d!54809 c!18185) b!74558))

(assert (= (and d!54809 (not c!18185)) b!74559))

(declare-fun m!72964 () Bool)

(assert (=> b!74561 m!72964))

(declare-fun m!72966 () Bool)

(assert (=> d!54809 m!72966))

(declare-fun m!72968 () Bool)

(assert (=> b!74566 m!72968))

(declare-fun m!72970 () Bool)

(assert (=> b!74563 m!72970))

(assert (=> b!74564 m!72964))

(assert (=> b!74459 d!54809))

(declare-fun b!74634 () Bool)

(declare-fun e!40336 () Formula!76)

(declare-fun lt!16087 () Formula!76)

(assert (=> b!74634 (= e!40336 lt!16087)))

(declare-fun b!74635 () Bool)

(declare-fun e!40332 () Formula!76)

(declare-fun lt!16092 () Formula!76)

(assert (=> b!74635 (= e!40332 lt!16092)))

(declare-fun b!74636 () Bool)

(declare-fun e!40341 () Formula!76)

(declare-fun lt!16096 () Bool)

(assert (=> b!74636 (= e!40341 (nnf!0 (ite lt!16096 (lhs!1342 f!4611) (ite (is-Or!80 f!4611) (lhs!1343 f!4611) (ite (is-Implies!80 f!4611) (lhs!1341 f!4611) (ite (and (is-Not!80 f!4611) (is-And!80 (f!4679 f!4611))) (Not!80 (lhs!1342 (f!4679 f!4611))) (ite (and (is-Not!80 f!4611) (is-Or!80 (f!4679 f!4611))) (Not!80 (lhs!1343 (f!4679 f!4611))) (ite (and (is-Not!80 f!4611) (is-Implies!80 (f!4679 f!4611))) (lhs!1341 (f!4679 f!4611)) (f!4679 (f!4679 f!4611))))))))))))

(declare-fun b!74637 () Bool)

(declare-fun e!40330 () Formula!76)

(declare-fun lt!16085 () Formula!76)

(declare-fun lt!16099 () Formula!76)

(assert (=> b!74637 (= e!40330 (Or!80 lt!16085 lt!16099))))

(declare-fun b!74638 () Bool)

(declare-fun e!40329 () Formula!76)

(declare-fun lt!16097 () Formula!76)

(assert (=> b!74638 (= e!40329 (And!80 lt!16087 lt!16097))))

(declare-fun b!74639 () Bool)

(declare-fun e!40331 () Formula!76)

(assert (=> b!74639 (= e!40331 lt!16097)))

(declare-fun b!74640 () Bool)

(declare-fun res!36834 () Formula!76)

(assert (=> b!74640 (= e!40331 res!36834)))

(assert (=> b!74640 true))

(declare-fun d!54811 () Bool)

(declare-fun lt!16094 () Formula!76)

(assert (=> d!54811 (isNNF!0 lt!16094)))

(assert (=> d!54811 (= lt!16094 e!40329)))

(declare-fun c!18218 () Bool)

(assert (=> d!54811 (= c!18218 lt!16096)))

(declare-fun e!40333 () Formula!76)

(assert (=> d!54811 (= lt!16097 e!40333)))

(declare-fun c!18225 () Bool)

(assert (=> d!54811 (= c!18225 (or lt!16096 (is-Or!80 f!4611) (is-Implies!80 f!4611) (and (is-Not!80 f!4611) (is-And!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Or!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Implies!80 (f!4679 f!4611)))))))

(assert (=> d!54811 (= lt!16087 e!40341)))

(declare-fun c!18233 () Bool)

(assert (=> d!54811 (= c!18233 (or lt!16096 (is-Or!80 f!4611) (is-Implies!80 f!4611) (and (is-Not!80 f!4611) (is-And!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Or!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Implies!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Not!80 (f!4679 f!4611)))))))

(assert (=> d!54811 (= lt!16096 (is-And!80 f!4611))))

(assert (=> d!54811 (= (nnf!0 f!4611) lt!16094)))

(declare-fun b!74641 () Bool)

(assert (=> b!74641 (= e!40333 (nnf!0 (ite lt!16096 (rhs!1342 f!4611) (ite (is-Or!80 f!4611) (rhs!1343 f!4611) (ite (is-Implies!80 f!4611) (rhs!1341 f!4611) (ite (and (is-Not!80 f!4611) (is-And!80 (f!4679 f!4611))) (Not!80 (rhs!1342 (f!4679 f!4611))) (ite (and (is-Not!80 f!4611) (is-Or!80 (f!4679 f!4611))) (Not!80 (rhs!1343 (f!4679 f!4611))) (Not!80 (rhs!1341 (f!4679 f!4611))))))))))))

(declare-fun b!74642 () Bool)

(declare-fun e!40343 () Formula!76)

(declare-fun res!36833 () Formula!76)

(assert (=> b!74642 (= e!40343 res!36833)))

(assert (=> b!74642 true))

(declare-fun b!74643 () Bool)

(declare-fun lt!16089 () Formula!76)

(declare-fun lt!16093 () Formula!76)

(declare-fun e!40337 () Formula!76)

(declare-fun lt!16098 () Bool)

(assert (=> b!74643 (= e!40337 (ite lt!16098 (And!80 lt!16089 lt!16093) (ite (and (is-Not!80 f!4611) (is-Not!80 (f!4679 f!4611))) lt!16089 f!4611)))))

(declare-fun e!40338 () Formula!76)

(assert (=> b!74643 (= lt!16089 e!40338)))

(declare-fun c!18223 () Bool)

(assert (=> b!74643 (= c!18223 (or lt!16098 (and (is-Not!80 f!4611) (is-Not!80 (f!4679 f!4611)))))))

(assert (=> b!74643 (= lt!16098 (and (is-Not!80 f!4611) (is-Implies!80 (f!4679 f!4611))))))

(declare-fun b!74644 () Bool)

(declare-fun e!40342 () Formula!76)

(declare-fun lt!16086 () Formula!76)

(assert (=> b!74644 (= e!40342 lt!16086)))

(declare-fun b!74645 () Bool)

(assert (=> b!74645 (= e!40343 lt!16099)))

(declare-fun b!74646 () Bool)

(declare-fun res!36837 () Formula!76)

(assert (=> b!74646 (= e!40342 res!36837)))

(assert (=> b!74646 true))

(declare-fun b!74647 () Bool)

(declare-fun res!36835 () Formula!76)

(assert (=> b!74647 (= e!40338 res!36835)))

(assert (=> b!74647 true))

(assert (=> b!74647 true))

(declare-fun b!74648 () Bool)

(declare-fun lt!16095 () Formula!76)

(assert (=> b!74648 (= e!40337 (And!80 lt!16095 lt!16093))))

(declare-fun b!74649 () Bool)

(declare-fun e!40335 () Formula!76)

(declare-fun e!40340 () Formula!76)

(assert (=> b!74649 (= e!40335 e!40340)))

(declare-fun c!18231 () Bool)

(declare-fun lt!16101 () Bool)

(assert (=> b!74649 (= c!18231 lt!16101)))

(declare-fun lt!16088 () Formula!76)

(declare-fun e!40334 () Formula!76)

(assert (=> b!74649 (= lt!16088 e!40334)))

(declare-fun c!18219 () Bool)

(assert (=> b!74649 (= c!18219 (or lt!16101 (and (is-Not!80 f!4611) (is-And!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Or!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Implies!80 (f!4679 f!4611)))))))

(assert (=> b!74649 (= lt!16086 e!40332)))

(declare-fun c!18230 () Bool)

(assert (=> b!74649 (= c!18230 (or lt!16101 (and (is-Not!80 f!4611) (is-And!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Or!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Implies!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Not!80 (f!4679 f!4611)))))))

(assert (=> b!74649 (= lt!16101 (is-Implies!80 f!4611))))

(declare-fun b!74650 () Bool)

(assert (=> b!74650 (= e!40340 e!40330)))

(declare-fun c!18222 () Bool)

(declare-fun lt!16091 () Bool)

(assert (=> b!74650 (= c!18222 lt!16091)))

(declare-fun e!40344 () Formula!76)

(assert (=> b!74650 (= lt!16099 e!40344)))

(declare-fun c!18221 () Bool)

(assert (=> b!74650 (= c!18221 (or lt!16091 (and (is-Not!80 f!4611) (is-Or!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Implies!80 (f!4679 f!4611)))))))

(assert (=> b!74650 (= lt!16085 e!40342)))

(declare-fun c!18229 () Bool)

(assert (=> b!74650 (= c!18229 (or lt!16091 (and (is-Not!80 f!4611) (is-Or!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Implies!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Not!80 (f!4679 f!4611)))))))

(assert (=> b!74650 (= lt!16091 (and (is-Not!80 f!4611) (is-And!80 (f!4679 f!4611))))))

(declare-fun b!74651 () Bool)

(declare-fun res!36836 () Formula!76)

(assert (=> b!74651 (= e!40341 res!36836)))

(assert (=> b!74651 true))

(declare-fun b!74652 () Bool)

(declare-fun lt!16102 () Formula!76)

(assert (=> b!74652 (= e!40335 (Or!80 lt!16092 lt!16102))))

(declare-fun b!74653 () Bool)

(assert (=> b!74653 (= e!40329 e!40335)))

(declare-fun c!18224 () Bool)

(declare-fun lt!16100 () Bool)

(assert (=> b!74653 (= c!18224 lt!16100)))

(assert (=> b!74653 (= lt!16102 e!40331)))

(declare-fun c!18226 () Bool)

(assert (=> b!74653 (= c!18226 (or lt!16100 (is-Implies!80 f!4611) (and (is-Not!80 f!4611) (is-And!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Or!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Implies!80 (f!4679 f!4611)))))))

(assert (=> b!74653 (= lt!16092 e!40336)))

(declare-fun c!18228 () Bool)

(assert (=> b!74653 (= c!18228 (or lt!16100 (is-Implies!80 f!4611) (and (is-Not!80 f!4611) (is-And!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Or!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Implies!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Not!80 (f!4679 f!4611)))))))

(assert (=> b!74653 (= lt!16100 (is-Or!80 f!4611))))

(declare-fun b!74654 () Bool)

(assert (=> b!74654 (= e!40334 lt!16102)))

(declare-fun b!74655 () Bool)

(declare-fun res!36831 () Formula!76)

(assert (=> b!74655 (= e!40344 res!36831)))

(assert (=> b!74655 true))

(declare-fun b!74656 () Bool)

(assert (=> b!74656 (= e!40338 lt!16095)))

(declare-fun b!74657 () Bool)

(assert (=> b!74657 (= e!40344 lt!16088)))

(declare-fun b!74658 () Bool)

(declare-fun res!36839 () Formula!76)

(assert (=> b!74658 (= e!40334 res!36839)))

(assert (=> b!74658 true))

(declare-fun b!74659 () Bool)

(declare-fun res!36830 () Formula!76)

(assert (=> b!74659 (= e!40333 res!36830)))

(assert (=> b!74659 true))

(declare-fun b!74660 () Bool)

(declare-fun res!36832 () Formula!76)

(assert (=> b!74660 (= e!40336 res!36832)))

(assert (=> b!74660 true))

(declare-fun b!74661 () Bool)

(declare-fun e!40339 () Formula!76)

(declare-fun res!36838 () Formula!76)

(assert (=> b!74661 (= e!40339 res!36838)))

(assert (=> b!74661 true))

(declare-fun b!74662 () Bool)

(declare-fun res!36840 () Formula!76)

(assert (=> b!74662 (= e!40332 res!36840)))

(assert (=> b!74662 true))

(declare-fun b!74663 () Bool)

(assert (=> b!74663 (= e!40330 e!40337)))

(declare-fun c!18232 () Bool)

(declare-fun lt!16090 () Bool)

(assert (=> b!74663 (= c!18232 lt!16090)))

(assert (=> b!74663 (= lt!16093 e!40343)))

(declare-fun c!18220 () Bool)

(assert (=> b!74663 (= c!18220 (or lt!16090 (and (is-Not!80 f!4611) (is-Implies!80 (f!4679 f!4611)))))))

(assert (=> b!74663 (= lt!16095 e!40339)))

(declare-fun c!18227 () Bool)

(assert (=> b!74663 (= c!18227 (or lt!16090 (and (is-Not!80 f!4611) (is-Implies!80 (f!4679 f!4611))) (and (is-Not!80 f!4611) (is-Not!80 (f!4679 f!4611)))))))

(assert (=> b!74663 (= lt!16090 (and (is-Not!80 f!4611) (is-Or!80 (f!4679 f!4611))))))

(declare-fun b!74664 () Bool)

(assert (=> b!74664 (= e!40339 lt!16085)))

(declare-fun b!74665 () Bool)

(assert (=> b!74665 (= e!40340 (Implies!80 lt!16086 lt!16088))))

(assert (= (and d!54811 c!18233) b!74636))

(assert (= (and d!54811 (not c!18233)) b!74651))

(assert (= (and d!54811 c!18225) b!74641))

(assert (= (and d!54811 (not c!18225)) b!74659))

(assert (= (and b!74653 c!18228) b!74634))

(assert (= (and b!74653 (not c!18228)) b!74660))

(assert (= (and b!74653 c!18226) b!74639))

(assert (= (and b!74653 (not c!18226)) b!74640))

(assert (= (and b!74649 c!18230) b!74635))

(assert (= (and b!74649 (not c!18230)) b!74662))

(assert (= (and b!74649 c!18219) b!74654))

(assert (= (and b!74649 (not c!18219)) b!74658))

(assert (= (and b!74650 c!18229) b!74644))

(assert (= (and b!74650 (not c!18229)) b!74646))

(assert (= (and b!74650 c!18221) b!74657))

(assert (= (and b!74650 (not c!18221)) b!74655))

(assert (= (and b!74663 c!18227) b!74664))

(assert (= (and b!74663 (not c!18227)) b!74661))

(assert (= (and b!74663 c!18220) b!74645))

(assert (= (and b!74663 (not c!18220)) b!74642))

(assert (= (and b!74643 c!18223) b!74656))

(assert (= (and b!74643 (not c!18223)) b!74647))

(assert (= (and b!74663 c!18232) b!74648))

(assert (= (and b!74663 (not c!18232)) b!74643))

(assert (= (and b!74650 c!18222) b!74637))

(assert (= (and b!74650 (not c!18222)) b!74663))

(assert (= (and b!74649 c!18231) b!74665))

(assert (= (and b!74649 (not c!18231)) b!74650))

(assert (= (and b!74653 c!18224) b!74652))

(assert (= (and b!74653 (not c!18224)) b!74649))

(assert (= (and d!54811 c!18218) b!74638))

(assert (= (and d!54811 (not c!18218)) b!74653))

(declare-fun m!72972 () Bool)

(assert (=> b!74636 m!72972))

(declare-fun m!72974 () Bool)

(assert (=> d!54811 m!72974))

(declare-fun m!72976 () Bool)

(assert (=> b!74641 m!72976))

(assert (=> b!74461 d!54811))

(declare-fun b!74666 () Bool)

(declare-fun e!40348 () Bool)

(declare-fun lt!16104 () Formula!76)

(assert (=> b!74666 (= e!40348 (= lt!16104 (lhs!1343 f!4611)))))

(declare-fun b!74667 () Bool)

(declare-fun e!40346 () Bool)

(assert (=> b!74667 (= e!40348 e!40346)))

(declare-fun c!18235 () Bool)

(declare-fun lt!16106 () Bool)

(assert (=> b!74667 (= c!18235 (or lt!16106 (is-Or!80 (lhs!1343 f!4611))))))

(assert (=> b!74667 (= lt!16106 (is-And!80 (lhs!1343 f!4611)))))

(declare-fun b!74668 () Bool)

(declare-fun e!40347 () Bool)

(declare-fun res!36842 () Bool)

(assert (=> b!74668 (= e!40347 res!36842)))

(assert (=> b!74668 true))

(declare-fun b!74669 () Bool)

(assert (=> b!74669 (= e!40346 (= (nnf!0 (lhs!1343 f!4611)) (lhs!1343 f!4611)))))

(declare-fun b!74670 () Bool)

(declare-fun e!40350 () Formula!76)

(declare-fun res!36843 () Formula!76)

(assert (=> b!74670 (= e!40350 res!36843)))

(assert (=> b!74670 true))

(assert (=> b!74670 true))

(declare-fun b!74671 () Bool)

(declare-fun lt!16107 () Bool)

(assert (=> b!74671 (= e!40347 (nnfIsStable!0 (ite lt!16107 (lhs!1341 (lhs!1343 f!4611)) (ite (is-And!80 (lhs!1343 f!4611)) (lhs!1342 (lhs!1343 f!4611)) (lhs!1343 (lhs!1343 f!4611))))))))

(declare-fun d!54813 () Bool)

(assert (=> d!54813 e!40348))

(declare-fun c!18239 () Bool)

(assert (=> d!54813 (= c!18239 lt!16107)))

(declare-fun e!40345 () Formula!76)

(assert (=> d!54813 (= lt!16104 e!40345)))

(declare-fun c!18234 () Bool)

(assert (=> d!54813 (= c!18234 (or lt!16107 (is-And!80 (lhs!1343 f!4611)) (is-Or!80 (lhs!1343 f!4611))))))

(declare-fun lt!16105 () Bool)

(assert (=> d!54813 (= lt!16105 e!40347)))

(declare-fun c!18237 () Bool)

(assert (=> d!54813 (= c!18237 (or lt!16107 (is-And!80 (lhs!1343 f!4611)) (is-Or!80 (lhs!1343 f!4611))))))

(declare-fun lt!16103 () Bool)

(declare-fun e!40349 () Bool)

(assert (=> d!54813 (= lt!16103 e!40349)))

(declare-fun c!18238 () Bool)

(assert (=> d!54813 (= c!18238 (or lt!16107 (is-And!80 (lhs!1343 f!4611)) (is-Or!80 (lhs!1343 f!4611)) (not (is-Literal!74 (lhs!1343 f!4611)))))))

(assert (=> d!54813 (= lt!16107 (is-Implies!80 (lhs!1343 f!4611)))))

(assert (=> d!54813 (isNNF!0 (lhs!1343 f!4611))))

(assert (=> d!54813 (= (nnfIsStable!0 (lhs!1343 f!4611)) true)))

(declare-fun b!74672 () Bool)

(assert (=> b!74672 (= e!40345 (nnf!0 (lhs!1343 f!4611)))))

(declare-fun b!74673 () Bool)

(declare-fun res!36841 () Formula!76)

(assert (=> b!74673 (= e!40345 res!36841)))

(assert (=> b!74673 true))

(declare-fun b!74674 () Bool)

(assert (=> b!74674 (= e!40349 (nnfIsStable!0 (ite lt!16107 (rhs!1341 (lhs!1343 f!4611)) (ite (is-And!80 (lhs!1343 f!4611)) (rhs!1342 (lhs!1343 f!4611)) (ite (is-Or!80 (lhs!1343 f!4611)) (rhs!1343 (lhs!1343 f!4611)) (f!4679 (lhs!1343 f!4611)))))))))

(declare-fun b!74675 () Bool)

(assert (=> b!74675 (= e!40350 lt!16104)))

(declare-fun b!74676 () Bool)

(assert (=> b!74676 (= e!40346 (= e!40350 (lhs!1343 f!4611)))))

(declare-fun c!18236 () Bool)

(assert (=> b!74676 (= c!18236 (or lt!16106 (is-Or!80 (lhs!1343 f!4611))))))

(declare-fun b!74677 () Bool)

(declare-fun res!36844 () Bool)

(assert (=> b!74677 (= e!40349 res!36844)))

(assert (=> b!74677 true))

(assert (= (and d!54813 c!18238) b!74674))

(assert (= (and d!54813 (not c!18238)) b!74677))

(assert (= (and d!54813 c!18237) b!74671))

(assert (= (and d!54813 (not c!18237)) b!74668))

(assert (= (and d!54813 c!18234) b!74672))

(assert (= (and d!54813 (not c!18234)) b!74673))

(assert (= (and b!74676 c!18236) b!74675))

(assert (= (and b!74676 (not c!18236)) b!74670))

(assert (= (and b!74667 c!18235) b!74676))

(assert (= (and b!74667 (not c!18235)) b!74669))

(assert (= (and d!54813 c!18239) b!74666))

(assert (= (and d!54813 (not c!18239)) b!74667))

(declare-fun m!72978 () Bool)

(assert (=> b!74669 m!72978))

(declare-fun m!72980 () Bool)

(assert (=> d!54813 m!72980))

(declare-fun m!72982 () Bool)

(assert (=> b!74674 m!72982))

(declare-fun m!72984 () Bool)

(assert (=> b!74671 m!72984))

(assert (=> b!74672 m!72978))

(assert (=> b!74460 d!54813))

(push 1)

(assert (not b!74671))

(assert (not b!74564))

(assert (not b!74636))

(assert (not b!74561))

(assert (not b!74672))

(assert (not b!74641))

(assert (not b!74566))

(assert (not d!54813))

(assert (not b!74514))

(assert (not b!74669))

(assert (not b!74512))

(assert (not d!54809))

(assert (not b!74563))

(assert (not d!54811))

(assert (not b!74674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

