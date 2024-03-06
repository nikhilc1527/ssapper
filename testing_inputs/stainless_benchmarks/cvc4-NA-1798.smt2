; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12238 () Bool)

(assert start!12238)

(declare-datatypes () ((array!1631 (array!1632 (arr!563 (Array (_ BitVec 32) (_ BitVec 32))) (size!806 (_ BitVec 32))))))

(declare-fun a!1110 () array!1631)

(assert (=> start!12238 (bvsge #b00000000000000000000000000000010 (size!806 a!1110))))

(declare-fun array_inv!553 (array!1631) Bool)

(assert (=> start!12238 (array_inv!553 a!1110)))

(declare-fun bs!41843 () Bool)

(assert (= bs!41843 start!12238))

(declare-fun m!87074 () Bool)

(assert (=> bs!41843 m!87074))

(push 1)

(assert (not start!12238))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60026 () Bool)

(assert (=> d!60026 (= (array_inv!553 a!1110) (bvsge (size!806 a!1110) #b00000000000000000000000000000000))))

(assert (=> start!12238 d!60026))

(push 1)

(check-sat)

(get-model)

(pop 1)

