; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!672 () Bool)

(assert start!672)

(declare-fun x!1788 () (_ BitVec 32))

(declare-datatypes () ((array!213 (array!214 (arr!81 (Array (_ BitVec 32) (_ BitVec 32))) (size!108 (_ BitVec 32))))))

(declare-fun a!329 () array!213)

(declare-fun x$1!214 () (_ BitVec 32))

(assert (=> start!672 (and (= x!1788 #b00000000000000000000000000001010) (= a!329 (array!214 (store (store (store ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000000010 x!1788) #b00000000000000000000000000000011 #b00000000000000000000000000000000) #b00000000000000000000000000000100 #b00000000000000000000000000000000) #b00000000000000000000000000000101)) (bvslt #b00000000000000000000000000000010 (size!108 a!329)) (= x$1!214 (select (arr!81 a!329) #b00000000000000000000000000000010)) (bvslt x$1!214 #b00000000000000000000000000000000))))

(assert (=> start!672 true))

(declare-fun array_inv!76 (array!213) Bool)

(assert (=> start!672 (array_inv!76 a!329)))

(declare-fun bs!354 () Bool)

(assert (= bs!354 start!672))

(declare-fun m!7075 () Bool)

(assert (=> bs!354 m!7075))

(declare-fun m!7077 () Bool)

(assert (=> bs!354 m!7077))

(declare-fun m!7079 () Bool)

(assert (=> bs!354 m!7079))

(declare-fun m!7081 () Bool)

(assert (=> bs!354 m!7081))

(declare-fun m!7083 () Bool)

(assert (=> bs!354 m!7083))

(push 1)

(assert (not start!672))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

