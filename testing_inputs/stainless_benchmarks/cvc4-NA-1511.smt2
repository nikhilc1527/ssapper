; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10254 () Bool)

(assert start!10254)

(declare-fun b!75133 () Bool)

(declare-fun res!37166 () Bool)

(declare-fun e!40592 () Bool)

(assert (=> b!75133 (=> (not res!37166) (not e!40592))))

(declare-datatypes () ((Formula!80 (Implies!84 (lhs!1353 Formula!80) (rhs!1353 Formula!80)) (And!84 (lhs!1354 Formula!80) (rhs!1354 Formula!80)) (Or!84 (lhs!1355 Formula!80) (rhs!1355 Formula!80)) (Literal!78 (id!4941 (_ BitVec 32))) (Not!84 (f!4689 Formula!80)))))

(declare-fun f!4468 () Formula!80)

(declare-fun f!4460 () Formula!80)

(assert (=> b!75133 (= res!37166 (= f!4468 (lhs!1353 f!4460)))))

(declare-fun b!75134 () Bool)

(declare-fun isSimplified!0 (Formula!80) Bool)

(assert (=> b!75134 (= e!40592 (not (isSimplified!0 f!4468)))))

(declare-fun b!75131 () Bool)

(declare-fun res!37168 () Bool)

(assert (=> b!75131 (=> (not res!37168) (not e!40592))))

(assert (=> b!75131 (= res!37168 (is-Implies!84 f!4460))))

(declare-fun res!37167 () Bool)

(assert (=> start!10254 (=> (not res!37167) (not e!40592))))

(assert (=> start!10254 (= res!37167 (isSimplified!0 f!4460))))

(assert (=> start!10254 e!40592))

(assert (=> start!10254 true))

(declare-fun b!75132 () Bool)

(declare-fun res!37169 () Bool)

(assert (=> b!75132 (=> (not res!37169) (not e!40592))))

(declare-fun inductVal!681 () Bool)

(declare-fun simplifyIsStable!0 (Formula!80) Bool)

(assert (=> b!75132 (= res!37169 (= inductVal!681 (simplifyIsStable!0 (rhs!1353 f!4460))))))

(assert (= (and start!10254 res!37167) b!75131))

(assert (= (and b!75131 res!37168) b!75132))

(assert (= (and b!75132 res!37169) b!75133))

(assert (= (and b!75133 res!37166) b!75134))

(declare-fun m!73036 () Bool)

(assert (=> b!75134 m!73036))

(declare-fun m!73038 () Bool)

(assert (=> start!10254 m!73038))

(declare-fun m!73040 () Bool)

(assert (=> b!75132 m!73040))

(push 1)

(assert (not b!75132))

(assert (not b!75134))

(assert (not start!10254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!75159 () Bool)

(declare-fun e!40606 () Bool)

(declare-fun simplify!0 (Formula!80) Formula!80)

(assert (=> b!75159 (= e!40606 (= (simplify!0 (rhs!1353 f!4460)) (rhs!1353 f!4460)))))

(declare-fun b!75160 () Bool)

(declare-fun e!40607 () Formula!80)

(declare-fun res!37202 () Formula!80)

(assert (=> b!75160 (= e!40607 res!37202)))

(assert (=> b!75160 true))

(declare-fun b!75161 () Bool)

(assert (=> b!75161 (= e!40607 (simplify!0 (rhs!1353 f!4460)))))

(declare-fun b!75162 () Bool)

(declare-fun e!40608 () Formula!80)

(assert (=> b!75162 (= e!40606 (= e!40608 (rhs!1353 f!4460)))))

(declare-fun c!18446 () Bool)

(declare-fun lt!16324 () Bool)

(assert (=> b!75162 (= c!18446 (or lt!16324 (is-Or!84 (rhs!1353 f!4460))))))

(declare-fun b!75163 () Bool)

(declare-fun lt!16323 () Formula!80)

(assert (=> b!75163 (= e!40608 lt!16323)))

(declare-fun b!75164 () Bool)

(declare-fun e!40610 () Bool)

(declare-fun lt!16325 () Bool)

(assert (=> b!75164 (= e!40610 (simplifyIsStable!0 (ite lt!16325 (rhs!1353 (rhs!1353 f!4460)) (ite (is-And!84 (rhs!1353 f!4460)) (rhs!1354 (rhs!1353 f!4460)) (ite (is-Or!84 (rhs!1353 f!4460)) (rhs!1355 (rhs!1353 f!4460)) (f!4689 (rhs!1353 f!4460)))))))))

(declare-fun b!75165 () Bool)

(declare-fun res!37201 () Formula!80)

(assert (=> b!75165 (= e!40608 res!37201)))

(assert (=> b!75165 true))

(assert (=> b!75165 true))

(declare-fun b!75166 () Bool)

(declare-fun e!40609 () Bool)

(assert (=> b!75166 (= e!40609 (simplifyIsStable!0 (ite lt!16325 (lhs!1353 (rhs!1353 f!4460)) (ite (is-And!84 (rhs!1353 f!4460)) (lhs!1354 (rhs!1353 f!4460)) (lhs!1355 (rhs!1353 f!4460))))))))

(declare-fun b!75167 () Bool)

(declare-fun e!40605 () Bool)

(assert (=> b!75167 (= e!40605 e!40606)))

(declare-fun c!18450 () Bool)

(assert (=> b!75167 (= c!18450 (or lt!16324 (is-Or!84 (rhs!1353 f!4460))))))

(assert (=> b!75167 (= lt!16324 (is-And!84 (rhs!1353 f!4460)))))

(declare-fun b!75168 () Bool)

(declare-fun res!37200 () Bool)

(assert (=> b!75168 (= e!40610 res!37200)))

(assert (=> b!75168 true))

(declare-fun b!75169 () Bool)

(declare-fun res!37199 () Bool)

(assert (=> b!75169 (= e!40609 res!37199)))

(assert (=> b!75169 true))

(declare-fun b!75170 () Bool)

(assert (=> b!75170 (= e!40605 (= lt!16323 (rhs!1353 f!4460)))))

(declare-fun d!54829 () Bool)

(assert (=> d!54829 e!40605))

(declare-fun c!18449 () Bool)

(assert (=> d!54829 (= c!18449 lt!16325)))

(assert (=> d!54829 (= lt!16323 e!40607)))

(declare-fun c!18451 () Bool)

(assert (=> d!54829 (= c!18451 (or lt!16325 (is-And!84 (rhs!1353 f!4460)) (is-Or!84 (rhs!1353 f!4460))))))

(declare-fun lt!16327 () Bool)

(assert (=> d!54829 (= lt!16327 e!40609)))

(declare-fun c!18448 () Bool)

(assert (=> d!54829 (= c!18448 (or lt!16325 (is-And!84 (rhs!1353 f!4460)) (is-Or!84 (rhs!1353 f!4460))))))

(declare-fun lt!16326 () Bool)

(assert (=> d!54829 (= lt!16326 e!40610)))

(declare-fun c!18447 () Bool)

(assert (=> d!54829 (= c!18447 (or lt!16325 (is-And!84 (rhs!1353 f!4460)) (is-Or!84 (rhs!1353 f!4460)) (not (is-Literal!78 (rhs!1353 f!4460)))))))

(assert (=> d!54829 (= lt!16325 (is-Implies!84 (rhs!1353 f!4460)))))

(assert (=> d!54829 (isSimplified!0 (rhs!1353 f!4460))))

(assert (=> d!54829 (= (simplifyIsStable!0 (rhs!1353 f!4460)) true)))

(assert (= (and d!54829 c!18447) b!75164))

(assert (= (and d!54829 (not c!18447)) b!75168))

(assert (= (and d!54829 c!18448) b!75166))

(assert (= (and d!54829 (not c!18448)) b!75169))

(assert (= (and d!54829 c!18451) b!75161))

(assert (= (and d!54829 (not c!18451)) b!75160))

(assert (= (and b!75162 c!18446) b!75163))

(assert (= (and b!75162 (not c!18446)) b!75165))

(assert (= (and b!75167 c!18450) b!75162))

(assert (= (and b!75167 (not c!18450)) b!75159))

(assert (= (and d!54829 c!18449) b!75170))

(assert (= (and d!54829 (not c!18449)) b!75167))

(declare-fun m!73042 () Bool)

(assert (=> b!75161 m!73042))

(declare-fun m!73044 () Bool)

(assert (=> b!75166 m!73044))

(assert (=> b!75159 m!73042))

(declare-fun m!73046 () Bool)

(assert (=> d!54829 m!73046))

(declare-fun m!73048 () Bool)

(assert (=> b!75164 m!73048))

(assert (=> b!75132 d!54829))

(declare-fun b!75197 () Bool)

(declare-fun e!40628 () Bool)

(declare-fun lt!16346 () Bool)

(declare-fun lt!16342 () Bool)

(assert (=> b!75197 (= e!40628 (and lt!16346 lt!16342))))

(declare-fun b!75198 () Bool)

(declare-fun e!40629 () Bool)

(declare-fun res!37233 () Bool)

(assert (=> b!75198 (= e!40629 res!37233)))

(assert (=> b!75198 true))

(declare-fun b!75199 () Bool)

(declare-fun e!40627 () Bool)

(declare-fun lt!16345 () Bool)

(assert (=> b!75199 (= e!40627 (isSimplified!0 (ite lt!16345 (lhs!1354 f!4468) (ite (is-Or!84 f!4468) (lhs!1355 f!4468) (f!4689 f!4468)))))))

(declare-fun b!75200 () Bool)

(declare-fun e!40634 () Bool)

(declare-fun res!37232 () Bool)

(assert (=> b!75200 (= e!40634 res!37232)))

(assert (=> b!75200 true))

(assert (=> b!75200 true))

(declare-fun b!75201 () Bool)

(declare-fun e!40631 () Bool)

(declare-fun res!37229 () Bool)

(assert (=> b!75201 (= e!40631 res!37229)))

(assert (=> b!75201 true))

(declare-fun b!75202 () Bool)

(declare-fun lt!16347 () Bool)

(assert (=> b!75202 (= e!40631 (isSimplified!0 (ite lt!16347 (rhs!1354 f!4468) (rhs!1355 f!4468))))))

(declare-fun b!75203 () Bool)

(declare-fun e!40633 () Bool)

(assert (=> b!75203 (= e!40633 e!40629)))

(declare-fun c!18463 () Bool)

(declare-fun lt!16344 () Bool)

(assert (=> b!75203 (= c!18463 (or lt!16344 (and (not (is-Implies!84 f!4468)) (is-Not!84 f!4468))))))

(declare-fun b!75204 () Bool)

(declare-fun lt!16348 () Bool)

(declare-fun lt!16343 () Bool)

(assert (=> b!75204 (= e!40628 (ite lt!16348 (and lt!16343 lt!16342) (and (not (is-Implies!84 f!4468)) (or (not (is-Not!84 f!4468)) lt!16343))))))

(assert (=> b!75204 (= lt!16343 e!40634)))

(declare-fun c!18464 () Bool)

(assert (=> b!75204 (= c!18464 (or lt!16348 (and (not (is-Implies!84 f!4468)) (is-Not!84 f!4468))))))

(assert (=> b!75204 (= lt!16348 (is-Or!84 f!4468))))

(declare-fun b!75205 () Bool)

(declare-fun e!40632 () Bool)

(declare-fun e!40630 () Bool)

(assert (=> b!75205 (= e!40632 e!40630)))

(declare-fun res!37228 () Bool)

(assert (=> b!75205 (=> (not res!37228) (not e!40630))))

(assert (=> b!75205 (= res!37228 (not lt!16345))))

(declare-fun b!75206 () Bool)

(assert (=> b!75206 (= e!40630 e!40633)))

(declare-fun res!37234 () Bool)

(assert (=> b!75206 (=> (not res!37234) (not e!40633))))

(assert (=> b!75206 (= res!37234 lt!16344)))

(assert (=> b!75206 (= lt!16344 (is-Or!84 f!4468))))

(declare-fun d!54831 () Bool)

(declare-fun c!18466 () Bool)

(assert (=> d!54831 (= c!18466 lt!16345)))

(assert (=> d!54831 (= lt!16342 e!40631)))

(declare-fun c!18465 () Bool)

(assert (=> d!54831 (= c!18465 e!40632)))

(declare-fun res!37231 () Bool)

(assert (=> d!54831 (=> res!37231 e!40632)))

(assert (=> d!54831 (= res!37231 lt!16347)))

(assert (=> d!54831 (= lt!16347 (and lt!16345 lt!16346))))

(assert (=> d!54831 (= lt!16346 e!40627)))

(declare-fun c!18462 () Bool)

(assert (=> d!54831 (= c!18462 (or lt!16345 (is-Or!84 f!4468) (and (not (is-Implies!84 f!4468)) (is-Not!84 f!4468))))))

(assert (=> d!54831 (= lt!16345 (is-And!84 f!4468))))

(assert (=> d!54831 (= (isSimplified!0 f!4468) e!40628)))

(declare-fun b!75207 () Bool)

(declare-fun res!37230 () Bool)

(assert (=> b!75207 (= e!40627 res!37230)))

(assert (=> b!75207 true))

(declare-fun b!75208 () Bool)

(assert (=> b!75208 (= e!40634 lt!16346)))

(declare-fun b!75209 () Bool)

(assert (=> b!75209 (= e!40629 lt!16346)))

(assert (= (and d!54831 c!18462) b!75199))

(assert (= (and d!54831 (not c!18462)) b!75207))

(assert (= (and d!54831 (not res!37231)) b!75205))

(assert (= (and b!75205 res!37228) b!75206))

(assert (= (and b!75206 res!37234) b!75203))

(assert (= (and b!75203 c!18463) b!75209))

(assert (= (and b!75203 (not c!18463)) b!75198))

(assert (= (and d!54831 c!18465) b!75202))

(assert (= (and d!54831 (not c!18465)) b!75201))

(assert (= (and b!75204 c!18464) b!75208))

(assert (= (and b!75204 (not c!18464)) b!75200))

(assert (= (and d!54831 c!18466) b!75197))

(assert (= (and d!54831 (not c!18466)) b!75204))

(declare-fun m!73050 () Bool)

(assert (=> b!75199 m!73050))

(declare-fun m!73052 () Bool)

(assert (=> b!75202 m!73052))

(assert (=> b!75134 d!54831))

(declare-fun b!75210 () Bool)

(declare-fun e!40636 () Bool)

(declare-fun lt!16353 () Bool)

(declare-fun lt!16349 () Bool)

(assert (=> b!75210 (= e!40636 (and lt!16353 lt!16349))))

(declare-fun b!75211 () Bool)

(declare-fun e!40637 () Bool)

(declare-fun res!37240 () Bool)

(assert (=> b!75211 (= e!40637 res!37240)))

(assert (=> b!75211 true))

(declare-fun b!75212 () Bool)

(declare-fun e!40635 () Bool)

(declare-fun lt!16352 () Bool)

(assert (=> b!75212 (= e!40635 (isSimplified!0 (ite lt!16352 (lhs!1354 f!4460) (ite (is-Or!84 f!4460) (lhs!1355 f!4460) (f!4689 f!4460)))))))

(declare-fun b!75213 () Bool)

(declare-fun e!40642 () Bool)

(declare-fun res!37239 () Bool)

(assert (=> b!75213 (= e!40642 res!37239)))

(assert (=> b!75213 true))

(assert (=> b!75213 true))

(declare-fun b!75214 () Bool)

(declare-fun e!40639 () Bool)

(declare-fun res!37236 () Bool)

(assert (=> b!75214 (= e!40639 res!37236)))

(assert (=> b!75214 true))

(declare-fun b!75215 () Bool)

(declare-fun lt!16354 () Bool)

(assert (=> b!75215 (= e!40639 (isSimplified!0 (ite lt!16354 (rhs!1354 f!4460) (rhs!1355 f!4460))))))

(declare-fun b!75216 () Bool)

(declare-fun e!40641 () Bool)

(assert (=> b!75216 (= e!40641 e!40637)))

(declare-fun c!18468 () Bool)

(declare-fun lt!16351 () Bool)

(assert (=> b!75216 (= c!18468 (or lt!16351 (and (not (is-Implies!84 f!4460)) (is-Not!84 f!4460))))))

(declare-fun lt!16350 () Bool)

(declare-fun lt!16355 () Bool)

(declare-fun b!75217 () Bool)

(assert (=> b!75217 (= e!40636 (ite lt!16355 (and lt!16350 lt!16349) (and (not (is-Implies!84 f!4460)) (or (not (is-Not!84 f!4460)) lt!16350))))))

(assert (=> b!75217 (= lt!16350 e!40642)))

(declare-fun c!18469 () Bool)

(assert (=> b!75217 (= c!18469 (or lt!16355 (and (not (is-Implies!84 f!4460)) (is-Not!84 f!4460))))))

(assert (=> b!75217 (= lt!16355 (is-Or!84 f!4460))))

(declare-fun b!75218 () Bool)

(declare-fun e!40640 () Bool)

(declare-fun e!40638 () Bool)

(assert (=> b!75218 (= e!40640 e!40638)))

(declare-fun res!37235 () Bool)

(assert (=> b!75218 (=> (not res!37235) (not e!40638))))

(assert (=> b!75218 (= res!37235 (not lt!16352))))

(declare-fun b!75219 () Bool)

(assert (=> b!75219 (= e!40638 e!40641)))

(declare-fun res!37241 () Bool)

(assert (=> b!75219 (=> (not res!37241) (not e!40641))))

(assert (=> b!75219 (= res!37241 lt!16351)))

(assert (=> b!75219 (= lt!16351 (is-Or!84 f!4460))))

(declare-fun d!54833 () Bool)

(declare-fun c!18471 () Bool)

(assert (=> d!54833 (= c!18471 lt!16352)))

(assert (=> d!54833 (= lt!16349 e!40639)))

(declare-fun c!18470 () Bool)

(assert (=> d!54833 (= c!18470 e!40640)))

(declare-fun res!37238 () Bool)

(assert (=> d!54833 (=> res!37238 e!40640)))

(assert (=> d!54833 (= res!37238 lt!16354)))

(assert (=> d!54833 (= lt!16354 (and lt!16352 lt!16353))))

(assert (=> d!54833 (= lt!16353 e!40635)))

(declare-fun c!18467 () Bool)

(assert (=> d!54833 (= c!18467 (or lt!16352 (is-Or!84 f!4460) (and (not (is-Implies!84 f!4460)) (is-Not!84 f!4460))))))

(assert (=> d!54833 (= lt!16352 (is-And!84 f!4460))))

(assert (=> d!54833 (= (isSimplified!0 f!4460) e!40636)))

(declare-fun b!75220 () Bool)

(declare-fun res!37237 () Bool)

(assert (=> b!75220 (= e!40635 res!37237)))

(assert (=> b!75220 true))

(declare-fun b!75221 () Bool)

(assert (=> b!75221 (= e!40642 lt!16353)))

(declare-fun b!75222 () Bool)

(assert (=> b!75222 (= e!40637 lt!16353)))

(assert (= (and d!54833 c!18467) b!75212))

(assert (= (and d!54833 (not c!18467)) b!75220))

(assert (= (and d!54833 (not res!37238)) b!75218))

(assert (= (and b!75218 res!37235) b!75219))

(assert (= (and b!75219 res!37241) b!75216))

(assert (= (and b!75216 c!18468) b!75222))

(assert (= (and b!75216 (not c!18468)) b!75211))

(assert (= (and d!54833 c!18470) b!75215))

(assert (= (and d!54833 (not c!18470)) b!75214))

(assert (= (and b!75217 c!18469) b!75221))

(assert (= (and b!75217 (not c!18469)) b!75213))

(assert (= (and d!54833 c!18471) b!75210))

(assert (= (and d!54833 (not c!18471)) b!75217))

(declare-fun m!73054 () Bool)

(assert (=> b!75212 m!73054))

(declare-fun m!73056 () Bool)

(assert (=> b!75215 m!73056))

(assert (=> start!10254 d!54833))

(push 1)

(assert (not b!75166))

(assert (not b!75159))

(assert (not b!75161))

(assert (not b!75212))

(assert (not b!75202))

(assert (not b!75215))

(assert (not d!54829))

(assert (not b!75164))

(assert (not b!75199))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

