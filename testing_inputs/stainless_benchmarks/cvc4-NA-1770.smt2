; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12114 () Bool)

(assert start!12114)

(declare-fun res!47626 () Bool)

(declare-fun e!49564 () Bool)

(assert (=> start!12114 (=> (not res!47626) (not e!49564))))

(declare-fun y!2234 () (_ BitVec 32))

(declare-fun inv!7 ((_ BitVec 32)) Bool)

(assert (=> start!12114 (= res!47626 (inv!7 y!2234))))

(assert (=> start!12114 e!49564))

(assert (=> start!12114 true))

(declare-fun b!90809 () Bool)

(declare-fun x$1!1219 () (_ BitVec 32))

(assert (=> b!90809 (= e!49564 (and (= x$1!1219 y!2234) (= x$1!1219 #b00000000000000000000000000101010)))))

(assert (= (and start!12114 res!47626) b!90809))

(declare-fun m!86650 () Bool)

(assert (=> start!12114 m!86650))

(push 1)

(assert (not start!12114))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!59710 () Bool)

(assert (=> d!59710 (= (inv!7 y!2234) (and (bvsgt y!2234 #b00000000000000000000000000000000) (not (= y!2234 #b00000000000000000000000000101010))))))

(assert (=> start!12114 d!59710))

(push 1)

(check-sat)

(pop 1)

