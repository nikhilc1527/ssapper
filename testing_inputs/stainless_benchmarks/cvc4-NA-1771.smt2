; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12118 () Bool)

(assert start!12118)

(declare-fun res!47629 () Bool)

(declare-fun e!49567 () Bool)

(assert (=> start!12118 (=> (not res!47629) (not e!49567))))

(declare-fun y!2233 () (_ BitVec 32))

(declare-fun vc!34 () (_ BitVec 32))

(assert (=> start!12118 (= res!47629 (and (bvsge y!2233 #b00000000000000000000000000000000) (bvslt y!2233 #b00000000000000000000000001100100) (= vc!34 (bvadd y!2233 #b00000000000000000000000001011101))))))

(assert (=> start!12118 e!49567))

(assert (=> start!12118 true))

(declare-fun b!90812 () Bool)

(declare-fun inv!7 ((_ BitVec 32)) Bool)

(assert (=> b!90812 (= e!49567 (not (inv!7 vc!34)))))

(assert (= (and start!12118 res!47629) b!90812))

(declare-fun m!86652 () Bool)

(assert (=> b!90812 m!86652))

(push 1)

(assert (not b!90812))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59712 () Bool)

(assert (=> d!59712 (= (inv!7 vc!34) (and (bvsgt vc!34 #b00000000000000000000000000000000) (not (= vc!34 #b00000000000000000000000000101010))))))

(assert (=> b!90812 d!59712))

(push 1)

(check-sat)

(pop 1)

