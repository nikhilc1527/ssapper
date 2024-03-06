; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!666 () Bool)

(assert start!666)

(declare-fun x!1771 () (_ BitVec 32))

(declare-datatypes () ((array!201 (array!202 (arr!76 (Array (_ BitVec 32) (_ BitVec 32))) (size!103 (_ BitVec 32))))))

(declare-fun a!327 () array!201)

(assert (=> start!666 (and (bvsge x!1771 #b00000000000000000000000000000000) (= a!327 (array!202 (store (store (store ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000000010 x!1771) #b00000000000000000000000000000011 #b00000000000000000000000000000000) #b00000000000000000000000000000100 #b00000000000000000000000000000000) #b00000000000000000000000000000101)) (bvsge #b00000000000000000000000000000010 (size!103 a!327)))))

(assert (=> start!666 true))

(declare-fun array_inv!71 (array!201) Bool)

(assert (=> start!666 (array_inv!71 a!327)))

(declare-fun bs!348 () Bool)

(assert (= bs!348 start!666))

(declare-fun m!7049 () Bool)

(assert (=> bs!348 m!7049))

(declare-fun m!7051 () Bool)

(assert (=> bs!348 m!7051))

(declare-fun m!7053 () Bool)

(assert (=> bs!348 m!7053))

(declare-fun m!7055 () Bool)

(assert (=> bs!348 m!7055))

(push 1)

(assert (not start!666))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

