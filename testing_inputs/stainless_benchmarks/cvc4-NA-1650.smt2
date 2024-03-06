; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11466 () Bool)

(assert start!11466)

(declare-fun res!45816 () Bool)

(declare-fun e!47670 () Bool)

(assert (=> start!11466 (=> (not res!45816) (not e!47670))))

(declare-fun b!87767 () (_ BitVec 16))

(assert (=> start!11466 (= res!45816 (= b!87767 #b0111111111111111))))

(assert (=> start!11466 e!47670))

(assert (=> start!11466 true))

(declare-fun b!87775 () Bool)

(declare-fun test!1 ((_ BitVec 16)) (_ BitVec 32))

(assert (=> b!87775 (= e!47670 (not (= (test!1 b!87767) #b00000000000000000000000000000000)))))

(assert (= (and start!11466 res!45816) b!87775))

(declare-fun m!84060 () Bool)

(assert (=> b!87775 m!84060))

(push 1)

(assert (not b!87775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!58507 () Bool)

(assert (=> d!58507 (= (test!1 b!87767) (ite (bvsgt ((_ sign_extend 16) b!87767) #b00000000000000000000000000000000) #b00000000000000000000000000000000 #b00000000000000000000000000000001))))

(assert (=> b!87775 d!58507))

(push 1)

(check-sat)

(pop 1)

