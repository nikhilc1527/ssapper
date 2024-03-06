; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12268 () Bool)

(assert start!12268)

(declare-datatypes () ((array!1694 (array!1695 (arr!584 (Array (_ BitVec 32) (_ BitVec 32))) (size!827 (_ BitVec 32))))))

(declare-fun a!1118 () array!1694)

(declare-fun x$1!1234 () (_ BitVec 32))

(assert (=> start!12268 (and (bvsge (size!827 a!1118) #b00000000000000000000000000001010) (= (select (arr!584 a!1118) #b00000000000000000000000000000111) #b00000000000000000000000000101010) (= x$1!1234 (size!827 a!1118)) (bvsgt x$1!1234 #b00111011100110101100101000000000))))

(declare-fun array_inv!574 (array!1694) Bool)

(assert (=> start!12268 (array_inv!574 a!1118)))

(assert (=> start!12268 true))

(declare-fun bs!41883 () Bool)

(assert (= bs!41883 start!12268))

(declare-fun m!87100 () Bool)

(assert (=> bs!41883 m!87100))

(declare-fun m!87102 () Bool)

(assert (=> bs!41883 m!87102))

(push 1)

(assert (not start!12268))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60052 () Bool)

(assert (=> d!60052 (= (array_inv!574 a!1118) (bvsge (size!827 a!1118) #b00000000000000000000000000000000))))

(assert (=> start!12268 d!60052))

(push 1)

(check-sat)

(get-model)

(pop 1)

