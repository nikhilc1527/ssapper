; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12246 () Bool)

(assert start!12246)

(declare-datatypes () ((array!1649 (array!1650 (arr!569 (Array (_ BitVec 32) (_ BitVec 32))) (size!812 (_ BitVec 32))))))

(declare-fun a!1112 () array!1649)

(assert (=> start!12246 (and (bvsgt (size!812 a!1112) #b00000000000000000000000000000000) (bvsge #b00000000000000000000000000000001 (size!812 a!1112)))))

(declare-fun array_inv!559 (array!1649) Bool)

(assert (=> start!12246 (array_inv!559 a!1112)))

(declare-fun bs!41847 () Bool)

(assert (= bs!41847 start!12246))

(declare-fun m!87080 () Bool)

(assert (=> bs!41847 m!87080))

(push 1)

(assert (not start!12246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60034 () Bool)

(assert (=> d!60034 (= (array_inv!559 a!1112) (bvsge (size!812 a!1112) #b00000000000000000000000000000000))))

(assert (=> start!12246 d!60034))

(push 1)

(check-sat)

(get-model)

(pop 1)

