; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!10250 () Bool)

(assert start!10250)

(declare-fun res!37117 () Bool)

(declare-fun e!40557 () Bool)

(assert (=> start!10250 (=> (not res!37117) (not e!40557))))

(declare-datatypes () ((Formula!79 (Implies!83 (lhs!1350 Formula!79) (rhs!1350 Formula!79)) (And!83 (lhs!1351 Formula!79) (rhs!1351 Formula!79)) (Or!83 (lhs!1352 Formula!79) (rhs!1352 Formula!79)) (Literal!77 (id!4940 (_ BitVec 32))) (Not!83 (f!4687 Formula!79)))))

(declare-fun f!4460 () Formula!79)

(declare-fun isSimplified!0 (Formula!79) Bool)

(assert (=> start!10250 (= res!37117 (isSimplified!0 f!4460))))

(assert (=> start!10250 e!40557))

(assert (=> start!10250 true))

(declare-fun b!75069 () Bool)

(declare-fun res!37118 () Bool)

(assert (=> b!75069 (=> (not res!37118) (not e!40557))))

(declare-fun f!4465 () Formula!79)

(assert (=> b!75069 (= res!37118 (and (is-Implies!83 f!4460) (= f!4465 (rhs!1350 f!4460))))))

(declare-fun b!75070 () Bool)

(assert (=> b!75070 (= e!40557 (not (isSimplified!0 f!4465)))))

(assert (= (and start!10250 res!37117) b!75069))

(assert (= (and b!75069 res!37118) b!75070))

(declare-fun m!73024 () Bool)

(assert (=> start!10250 m!73024))

(declare-fun m!73026 () Bool)

(assert (=> b!75070 m!73026))

(push 1)

(assert (not start!10250))

(assert (not b!75070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!75097 () Bool)

(declare-fun e!40576 () Bool)

(declare-fun res!37148 () Bool)

(assert (=> b!75097 (= e!40576 res!37148)))

(assert (=> b!75097 true))

(assert (=> b!75097 true))

(declare-fun b!75098 () Bool)

(declare-fun e!40575 () Bool)

(declare-fun e!40580 () Bool)

(assert (=> b!75098 (= e!40575 e!40580)))

(declare-fun c!18425 () Bool)

(declare-fun lt!16301 () Bool)

(assert (=> b!75098 (= c!18425 (or lt!16301 (and (not (is-Implies!83 f!4460)) (is-Not!83 f!4460))))))

(declare-fun d!54825 () Bool)

(declare-fun c!18428 () Bool)

(declare-fun lt!16305 () Bool)

(assert (=> d!54825 (= c!18428 lt!16305)))

(declare-fun lt!16303 () Bool)

(declare-fun e!40581 () Bool)

(assert (=> d!54825 (= lt!16303 e!40581)))

(declare-fun c!18426 () Bool)

(declare-fun e!40578 () Bool)

(assert (=> d!54825 (= c!18426 e!40578)))

(declare-fun res!37146 () Bool)

(assert (=> d!54825 (=> res!37146 e!40578)))

(declare-fun lt!16304 () Bool)

(assert (=> d!54825 (= res!37146 lt!16304)))

(declare-fun lt!16299 () Bool)

(assert (=> d!54825 (= lt!16304 (and lt!16305 lt!16299))))

(declare-fun e!40574 () Bool)

(assert (=> d!54825 (= lt!16299 e!40574)))

(declare-fun c!18427 () Bool)

(assert (=> d!54825 (= c!18427 (or lt!16305 (is-Or!83 f!4460) (and (not (is-Implies!83 f!4460)) (is-Not!83 f!4460))))))

(assert (=> d!54825 (= lt!16305 (is-And!83 f!4460))))

(declare-fun e!40577 () Bool)

(assert (=> d!54825 (= (isSimplified!0 f!4460) e!40577)))

(declare-fun b!75099 () Bool)

(assert (=> b!75099 (= e!40580 lt!16299)))

(declare-fun b!75100 () Bool)

(declare-fun res!37147 () Bool)

(assert (=> b!75100 (= e!40581 res!37147)))

(assert (=> b!75100 true))

(declare-fun b!75101 () Bool)

(assert (=> b!75101 (= e!40574 (isSimplified!0 (ite lt!16305 (lhs!1351 f!4460) (ite (is-Or!83 f!4460) (lhs!1352 f!4460) (f!4687 f!4460)))))))

(declare-fun b!75102 () Bool)

(declare-fun res!37145 () Bool)

(assert (=> b!75102 (= e!40574 res!37145)))

(assert (=> b!75102 true))

(declare-fun b!75103 () Bool)

(declare-fun e!40579 () Bool)

(assert (=> b!75103 (= e!40578 e!40579)))

(declare-fun res!37150 () Bool)

(assert (=> b!75103 (=> (not res!37150) (not e!40579))))

(assert (=> b!75103 (= res!37150 (not lt!16305))))

(declare-fun lt!16302 () Bool)

(declare-fun lt!16300 () Bool)

(declare-fun b!75104 () Bool)

(assert (=> b!75104 (= e!40577 (ite lt!16302 (and lt!16300 lt!16303) (and (not (is-Implies!83 f!4460)) (or (not (is-Not!83 f!4460)) lt!16300))))))

(assert (=> b!75104 (= lt!16300 e!40576)))

(declare-fun c!18424 () Bool)

(assert (=> b!75104 (= c!18424 (or lt!16302 (and (not (is-Implies!83 f!4460)) (is-Not!83 f!4460))))))

(assert (=> b!75104 (= lt!16302 (is-Or!83 f!4460))))

(declare-fun b!75105 () Bool)

(assert (=> b!75105 (= e!40576 lt!16299)))

(declare-fun b!75106 () Bool)

(assert (=> b!75106 (= e!40581 (isSimplified!0 (ite lt!16304 (rhs!1351 f!4460) (rhs!1352 f!4460))))))

(declare-fun b!75107 () Bool)

(declare-fun res!37144 () Bool)

(assert (=> b!75107 (= e!40580 res!37144)))

(assert (=> b!75107 true))

(declare-fun b!75108 () Bool)

(assert (=> b!75108 (= e!40577 (and lt!16299 lt!16303))))

(declare-fun b!75109 () Bool)

(assert (=> b!75109 (= e!40579 e!40575)))

(declare-fun res!37149 () Bool)

(assert (=> b!75109 (=> (not res!37149) (not e!40575))))

(assert (=> b!75109 (= res!37149 lt!16301)))

(assert (=> b!75109 (= lt!16301 (is-Or!83 f!4460))))

(assert (= (and d!54825 c!18427) b!75101))

(assert (= (and d!54825 (not c!18427)) b!75102))

(assert (= (and d!54825 (not res!37146)) b!75103))

(assert (= (and b!75103 res!37150) b!75109))

(assert (= (and b!75109 res!37149) b!75098))

(assert (= (and b!75098 c!18425) b!75099))

(assert (= (and b!75098 (not c!18425)) b!75107))

(assert (= (and d!54825 c!18426) b!75106))

(assert (= (and d!54825 (not c!18426)) b!75100))

(assert (= (and b!75104 c!18424) b!75105))

(assert (= (and b!75104 (not c!18424)) b!75097))

(assert (= (and d!54825 c!18428) b!75108))

(assert (= (and d!54825 (not c!18428)) b!75104))

(declare-fun m!73028 () Bool)

(assert (=> b!75101 m!73028))

(declare-fun m!73030 () Bool)

(assert (=> b!75106 m!73030))

(assert (=> start!10250 d!54825))

(declare-fun b!75110 () Bool)

(declare-fun e!40584 () Bool)

(declare-fun res!37155 () Bool)

(assert (=> b!75110 (= e!40584 res!37155)))

(assert (=> b!75110 true))

(assert (=> b!75110 true))

(declare-fun b!75111 () Bool)

(declare-fun e!40583 () Bool)

(declare-fun e!40588 () Bool)

(assert (=> b!75111 (= e!40583 e!40588)))

(declare-fun c!18430 () Bool)

(declare-fun lt!16308 () Bool)

(assert (=> b!75111 (= c!18430 (or lt!16308 (and (not (is-Implies!83 f!4465)) (is-Not!83 f!4465))))))

(declare-fun d!54827 () Bool)

(declare-fun c!18433 () Bool)

(declare-fun lt!16312 () Bool)

(assert (=> d!54827 (= c!18433 lt!16312)))

(declare-fun lt!16310 () Bool)

(declare-fun e!40589 () Bool)

(assert (=> d!54827 (= lt!16310 e!40589)))

(declare-fun c!18431 () Bool)

(declare-fun e!40586 () Bool)

(assert (=> d!54827 (= c!18431 e!40586)))

(declare-fun res!37153 () Bool)

(assert (=> d!54827 (=> res!37153 e!40586)))

(declare-fun lt!16311 () Bool)

(assert (=> d!54827 (= res!37153 lt!16311)))

(declare-fun lt!16306 () Bool)

(assert (=> d!54827 (= lt!16311 (and lt!16312 lt!16306))))

(declare-fun e!40582 () Bool)

(assert (=> d!54827 (= lt!16306 e!40582)))

(declare-fun c!18432 () Bool)

(assert (=> d!54827 (= c!18432 (or lt!16312 (is-Or!83 f!4465) (and (not (is-Implies!83 f!4465)) (is-Not!83 f!4465))))))

(assert (=> d!54827 (= lt!16312 (is-And!83 f!4465))))

(declare-fun e!40585 () Bool)

(assert (=> d!54827 (= (isSimplified!0 f!4465) e!40585)))

(declare-fun b!75112 () Bool)

(assert (=> b!75112 (= e!40588 lt!16306)))

(declare-fun b!75113 () Bool)

(declare-fun res!37154 () Bool)

(assert (=> b!75113 (= e!40589 res!37154)))

(assert (=> b!75113 true))

(declare-fun b!75114 () Bool)

(assert (=> b!75114 (= e!40582 (isSimplified!0 (ite lt!16312 (lhs!1351 f!4465) (ite (is-Or!83 f!4465) (lhs!1352 f!4465) (f!4687 f!4465)))))))

(declare-fun b!75115 () Bool)

(declare-fun res!37152 () Bool)

(assert (=> b!75115 (= e!40582 res!37152)))

(assert (=> b!75115 true))

(declare-fun b!75116 () Bool)

(declare-fun e!40587 () Bool)

(assert (=> b!75116 (= e!40586 e!40587)))

(declare-fun res!37157 () Bool)

(assert (=> b!75116 (=> (not res!37157) (not e!40587))))

(assert (=> b!75116 (= res!37157 (not lt!16312))))

(declare-fun lt!16307 () Bool)

(declare-fun b!75117 () Bool)

(declare-fun lt!16309 () Bool)

(assert (=> b!75117 (= e!40585 (ite lt!16309 (and lt!16307 lt!16310) (and (not (is-Implies!83 f!4465)) (or (not (is-Not!83 f!4465)) lt!16307))))))

(assert (=> b!75117 (= lt!16307 e!40584)))

(declare-fun c!18429 () Bool)

(assert (=> b!75117 (= c!18429 (or lt!16309 (and (not (is-Implies!83 f!4465)) (is-Not!83 f!4465))))))

(assert (=> b!75117 (= lt!16309 (is-Or!83 f!4465))))

(declare-fun b!75118 () Bool)

(assert (=> b!75118 (= e!40584 lt!16306)))

(declare-fun b!75119 () Bool)

(assert (=> b!75119 (= e!40589 (isSimplified!0 (ite lt!16311 (rhs!1351 f!4465) (rhs!1352 f!4465))))))

(declare-fun b!75120 () Bool)

(declare-fun res!37151 () Bool)

(assert (=> b!75120 (= e!40588 res!37151)))

(assert (=> b!75120 true))

(declare-fun b!75121 () Bool)

(assert (=> b!75121 (= e!40585 (and lt!16306 lt!16310))))

(declare-fun b!75122 () Bool)

(assert (=> b!75122 (= e!40587 e!40583)))

(declare-fun res!37156 () Bool)

(assert (=> b!75122 (=> (not res!37156) (not e!40583))))

(assert (=> b!75122 (= res!37156 lt!16308)))

(assert (=> b!75122 (= lt!16308 (is-Or!83 f!4465))))

(assert (= (and d!54827 c!18432) b!75114))

(assert (= (and d!54827 (not c!18432)) b!75115))

(assert (= (and d!54827 (not res!37153)) b!75116))

(assert (= (and b!75116 res!37157) b!75122))

(assert (= (and b!75122 res!37156) b!75111))

(assert (= (and b!75111 c!18430) b!75112))

(assert (= (and b!75111 (not c!18430)) b!75120))

(assert (= (and d!54827 c!18431) b!75119))

(assert (= (and d!54827 (not c!18431)) b!75113))

(assert (= (and b!75117 c!18429) b!75118))

(assert (= (and b!75117 (not c!18429)) b!75110))

(assert (= (and d!54827 c!18433) b!75121))

(assert (= (and d!54827 (not c!18433)) b!75117))

(declare-fun m!73032 () Bool)

(assert (=> b!75114 m!73032))

(declare-fun m!73034 () Bool)

(assert (=> b!75119 m!73034))

(assert (=> b!75070 d!54827))

(push 1)

(assert (not b!75119))

(assert (not b!75114))

(assert (not b!75106))

(assert (not b!75101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

