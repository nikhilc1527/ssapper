; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7752 () Bool)

(assert start!7752)

(declare-fun res!25485 () Bool)

(declare-fun e!29104 () Bool)

(assert (=> start!7752 (=> (not res!25485) (not e!29104))))

(declare-fun n!1560 () (_ BitVec 32))

(assert (=> start!7752 (= res!25485 (and (bvsge n!1560 #b00000000000000000000000000000000) (bvsgt n!1560 #b00000000000000000000000000000000)))))

(assert (=> start!7752 e!29104))

(assert (=> start!7752 true))

(declare-fun b!55261 () Bool)

(declare-fun res!25486 () Bool)

(assert (=> b!55261 (=> (not res!25486) (not e!29104))))

(declare-datatypes () ((Unit!937 (Unit!938))))

(declare-fun inductVal!138 () Unit!937)

(declare-fun countDownNonneg!0 ((_ BitVec 32)) Unit!937)

(assert (=> b!55261 (= res!25486 (= inductVal!138 (countDownNonneg!0 (bvsub n!1560 #b00000000000000000000000000000001))))))

(declare-fun b!55262 () Bool)

(declare-fun res!25487 () Bool)

(assert (=> b!55262 (=> (not res!25487) (not e!29104))))

(declare-fun x$1!786 () Unit!937)

(declare-fun Unit!939 () Unit!937)

(assert (=> b!55262 (= res!25487 (= x$1!786 Unit!939))))

(declare-fun b!55263 () Bool)

(declare-fun countDown!0 ((_ BitVec 32)) (_ BitVec 32))

(assert (=> b!55263 (= e!29104 (bvsgt (countDown!0 n!1560) #b00000000000000000000000000000000))))

(assert (= (and start!7752 res!25485) b!55261))

(assert (= (and b!55261 res!25486) b!55262))

(assert (= (and b!55262 res!25487) b!55263))

(declare-fun m!60028 () Bool)

(assert (=> b!55261 m!60028))

(declare-fun m!60030 () Bool)

(assert (=> b!55263 m!60030))

(push 1)

(assert (not b!55261))

(assert (not b!55263))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45240 () Bool)

(assert (=> d!45240 (bvsle (countDown!0 (bvsub n!1560 #b00000000000000000000000000000001)) #b00000000000000000000000000000000)))

(declare-fun lt!9827 () Unit!937)

(declare-fun e!29107 () Unit!937)

(assert (=> d!45240 (= lt!9827 e!29107)))

(declare-fun c!12019 () Bool)

(assert (=> d!45240 (= c!12019 (bvsle (bvsub n!1560 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> d!45240 (bvsge (bvsub n!1560 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!45240 (= (countDownNonneg!0 (bvsub n!1560 #b00000000000000000000000000000001)) lt!9827)))

(declare-fun b!55269 () Bool)

(declare-fun Unit!940 () Unit!937)

(assert (=> b!55269 (= e!29107 Unit!940)))

(declare-fun lt!9828 () Unit!937)

(assert (=> b!55269 (= lt!9828 (countDownNonneg!0 (bvsub (bvsub n!1560 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun b!55268 () Bool)

(declare-fun Unit!941 () Unit!937)

(assert (=> b!55268 (= e!29107 Unit!941)))

(assert (= (and d!45240 c!12019) b!55268))

(assert (= (and d!45240 (not c!12019)) b!55269))

(declare-fun m!60032 () Bool)

(assert (=> d!45240 m!60032))

(declare-fun m!60034 () Bool)

(assert (=> b!55269 m!60034))

(assert (=> b!55261 d!45240))

(declare-fun d!45242 () Bool)

(declare-fun c!12022 () Bool)

(assert (=> d!45242 (= c!12022 (bvsgt n!1560 #b00000000000000000000000000000000))))

(declare-fun e!29110 () (_ BitVec 32))

(assert (=> d!45242 (= (countDown!0 n!1560) e!29110)))

(declare-fun b!55274 () Bool)

(assert (=> b!55274 (= e!29110 (countDown!0 (bvsub n!1560 #b00000000000000000000000000000001)))))

(declare-fun b!55275 () Bool)

(assert (=> b!55275 (= e!29110 n!1560)))

(assert (= (and d!45242 c!12022) b!55274))

(assert (= (and d!45242 (not c!12022)) b!55275))

(assert (=> b!55274 m!60032))

(assert (=> b!55263 d!45242))

(push 1)

(assert (not b!55274))

(assert (not d!45240))

(assert (not b!55269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

