; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!670 () Bool)

(assert start!670)

(declare-fun x!1788 () (_ BitVec 32))

(declare-datatypes () ((array!211 (array!212 (arr!80 (Array (_ BitVec 32) (_ BitVec 32))) (size!107 (_ BitVec 32))))))

(declare-fun a!329 () array!211)

(assert (=> start!670 (and (= x!1788 #b00000000000000000000000000001010) (= a!329 (array!212 (store (store (store ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000000010 x!1788) #b00000000000000000000000000000011 #b00000000000000000000000000000000) #b00000000000000000000000000000100 #b00000000000000000000000000000000) #b00000000000000000000000000000101)) (bvsge #b00000000000000000000000000000010 (size!107 a!329)))))

(assert (=> start!670 true))

(declare-fun array_inv!75 (array!211) Bool)

(assert (=> start!670 (array_inv!75 a!329)))

(declare-fun bs!352 () Bool)

(assert (= bs!352 start!670))

(declare-fun m!7067 () Bool)

(assert (=> bs!352 m!7067))

(declare-fun m!7069 () Bool)

(assert (=> bs!352 m!7069))

(declare-fun m!7071 () Bool)

(assert (=> bs!352 m!7071))

(declare-fun m!7073 () Bool)

(assert (=> bs!352 m!7073))

(push 1)

(assert (not start!670))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

