; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7748 () Bool)

(assert start!7748)

(declare-fun res!25478 () Bool)

(declare-fun e!29098 () Bool)

(assert (=> start!7748 (=> (not res!25478) (not e!29098))))

(declare-fun n!1560 () (_ BitVec 32))

(declare-datatypes () ((Unit!934 (Unit!935))))

(declare-fun x$1!784 () Unit!934)

(declare-fun Unit!936 () Unit!934)

(assert (=> start!7748 (= res!25478 (and (bvsge n!1560 #b00000000000000000000000000000000) (bvsle n!1560 #b00000000000000000000000000000000) (= x$1!784 Unit!936)))))

(assert (=> start!7748 e!29098))

(assert (=> start!7748 true))

(declare-fun b!55248 () Bool)

(declare-fun countDown!0 ((_ BitVec 32)) (_ BitVec 32))

(assert (=> b!55248 (= e!29098 (bvsgt (countDown!0 n!1560) #b00000000000000000000000000000000))))

(assert (= (and start!7748 res!25478) b!55248))

(declare-fun m!60024 () Bool)

(assert (=> b!55248 m!60024))

(push 1)

(assert (not b!55248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!45238 () Bool)

(declare-fun c!12016 () Bool)

(assert (=> d!45238 (= c!12016 (bvsgt n!1560 #b00000000000000000000000000000000))))

(declare-fun e!29101 () (_ BitVec 32))

(assert (=> d!45238 (= (countDown!0 n!1560) e!29101)))

(declare-fun b!55253 () Bool)

(assert (=> b!55253 (= e!29101 (countDown!0 (bvsub n!1560 #b00000000000000000000000000000001)))))

(declare-fun b!55254 () Bool)

(assert (=> b!55254 (= e!29101 n!1560)))

(assert (= (and d!45238 c!12016) b!55253))

(assert (= (and d!45238 (not c!12016)) b!55254))

(declare-fun m!60026 () Bool)

(assert (=> b!55253 m!60026))

(assert (=> b!55248 d!45238))

(push 1)

(assert (not b!55253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

