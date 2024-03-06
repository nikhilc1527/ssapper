; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12252 () Bool)

(assert start!12252)

(declare-fun res!47909 () Bool)

(declare-fun e!49929 () Bool)

(assert (=> start!12252 (=> (not res!47909) (not e!49929))))

(declare-fun a!1113 () (_ BitVec 32))

(declare-fun b!91245 () (_ BitVec 32))

(assert (=> start!12252 (= res!47909 (and (bvsgt a!1113 #b00000000000000000000000000000000) (= b!91245 a!1113) (bvsgt b!91245 #b00000000000000000000000000000000)))))

(assert (=> start!12252 e!49929))

(assert (=> start!12252 true))

(declare-fun b!91252 () Bool)

(declare-fun res!47910 () Bool)

(assert (=> b!91252 (=> (not res!47910) (not e!49929))))

(declare-fun res!47902 () (_ BitVec 32))

(declare-fun bar!37 ((_ BitVec 32)) (_ BitVec 32))

(assert (=> b!91252 (= res!47910 (= res!47902 (bvadd b!91245 (bar!37 #b00000000000000000000000000000001))))))

(declare-fun b!91253 () Bool)

(assert (=> b!91253 (= e!49929 (or (bvsle res!47902 a!1113) (bvsge res!47902 #b00000000000000000000000000000010)))))

(assert (= (and start!12252 res!47909) b!91252))

(assert (= (and b!91252 res!47910) b!91253))

(declare-fun m!87082 () Bool)

(assert (=> b!91252 m!87082))

(push 1)

(assert (not b!91252))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60038 () Bool)

(assert (=> d!60038 (and (bvsgt #b00000000000000000000000000000001 #b00000000000000000000000000000000) (let ((res!47912 (bvadd #b00000000000000000000000000000001 #b00000000000000000000000000000010))) (and (bvsgt res!47912 #b00000000000000000000000000000001) (bvsgt res!47912 #b00000000000000000000000000000010))))))

(assert (=> d!60038 (= (bar!37 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 #b00000000000000000000000000000010))))

(assert (=> b!91252 d!60038))

(push 1)

(check-sat)

(get-model)

(pop 1)

