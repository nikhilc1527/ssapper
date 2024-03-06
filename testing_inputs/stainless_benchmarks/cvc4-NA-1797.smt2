; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12234 () Bool)

(assert start!12234)

(declare-datatypes () ((array!1622 (array!1623 (arr!560 (Array (_ BitVec 32) (_ BitVec 32))) (size!803 (_ BitVec 32))))))

(declare-fun a!1109 () array!1622)

(assert (=> start!12234 (bvsge #b00000000000000000000000000000000 (size!803 a!1109))))

(declare-fun array_inv!550 (array!1622) Bool)

(assert (=> start!12234 (array_inv!550 a!1109)))

(declare-fun bs!41841 () Bool)

(assert (= bs!41841 start!12234))

(declare-fun m!87072 () Bool)

(assert (=> bs!41841 m!87072))

(push 1)

(assert (not start!12234))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!60022 () Bool)

(assert (=> d!60022 (= (array_inv!550 a!1109) (bvsge (size!803 a!1109) #b00000000000000000000000000000000))))

(assert (=> start!12234 d!60022))

(push 1)

(check-sat)

(get-model)

(pop 1)

