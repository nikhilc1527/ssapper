; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11214 () Bool)

(assert start!11214)

(declare-fun res!44469 () Bool)

(declare-fun e!46405 () Bool)

(assert (=> start!11214 (=> (not res!44469) (not e!46405))))

(declare-fun x!29237 () Int)

(declare-datatypes () ((List!712 (Cons!669 (h!1042 Int) (t!48157 List!712)) (Nil!671))))

(declare-fun ls!37 () List!712)

(declare-fun prop!505 () Bool)

(declare-fun filter_equal_sorted!0 (List!712 Int) Bool)

(assert (=> start!11214 (= res!44469 (= prop!505 (filter_equal_sorted!0 ls!37 x!29237)))))

(assert (=> start!11214 e!46405))

(assert (=> start!11214 true))

(declare-fun b!85582 () Bool)

(assert (=> b!85582 (= e!46405 (not prop!505))))

(assert (= (and start!11214 res!44469) b!85582))

(declare-fun m!81392 () Bool)

(assert (=> start!11214 m!81392))

(push 1)

(assert (not start!11214))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!85587 () Bool)

(assert (=> b!85587 true))

(declare-fun bs!41067 () Bool)

(declare-fun b!85588 () Bool)

(assert (= bs!41067 (and b!85588 b!85587)))

(declare-fun lambda!10791 () Int)

(declare-fun lambda!10790 () Int)

(assert (=> bs!41067 (= lambda!10791 lambda!10790)))

(assert (=> b!85588 true))

(declare-fun e!46408 () Bool)

(declare-fun isSorted!1 (List!712) Bool)

(declare-fun filter!45 (List!712 Int) List!712)

(assert (=> b!85587 (= e!46408 (isSorted!1 (filter!45 ls!37 lambda!10790)))))

(declare-fun lt!19919 () Bool)

(assert (=> b!85587 (= lt!19919 (filter_equal_sorted!0 (t!48157 ls!37) x!29237))))

(declare-fun d!57403 () Bool)

(assert (=> d!57403 e!46408))

(declare-fun c!21232 () Bool)

(assert (=> d!57403 (= c!21232 (is-Cons!669 ls!37))))

(assert (=> d!57403 (= (filter_equal_sorted!0 ls!37 x!29237) true)))

(assert (=> b!85588 (= e!46408 (isSorted!1 (filter!45 ls!37 lambda!10791)))))

(assert (= (and d!57403 c!21232) b!85587))

(assert (= (and d!57403 (not c!21232)) b!85588))

(declare-fun m!81394 () Bool)

(assert (=> b!85587 m!81394))

(assert (=> b!85587 m!81394))

(declare-fun m!81396 () Bool)

(assert (=> b!85587 m!81396))

(declare-fun m!81398 () Bool)

(assert (=> b!85587 m!81398))

(declare-fun m!81400 () Bool)

(assert (=> b!85588 m!81400))

(assert (=> b!85588 m!81400))

(declare-fun m!81402 () Bool)

(assert (=> b!85588 m!81402))

(assert (=> start!11214 d!57403))

(push 1)

(assert (not b!85587))

(assert (not b!85588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

