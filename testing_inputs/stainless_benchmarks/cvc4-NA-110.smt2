; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!668 () Bool)

(assert start!668)

(declare-fun x!1771 () (_ BitVec 32))

(declare-datatypes () ((array!203 (array!204 (arr!77 (Array (_ BitVec 32) (_ BitVec 32))) (size!104 (_ BitVec 32))))))

(declare-fun a!327 () array!203)

(declare-fun x$1!213 () (_ BitVec 32))

(assert (=> start!668 (and (bvsge x!1771 #b00000000000000000000000000000000) (= a!327 (array!204 (store (store (store ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000000010 x!1771) #b00000000000000000000000000000011 #b00000000000000000000000000000000) #b00000000000000000000000000000100 #b00000000000000000000000000000000) #b00000000000000000000000000000101)) (bvslt #b00000000000000000000000000000010 (size!104 a!327)) (= x$1!213 (select (arr!77 a!327) #b00000000000000000000000000000010)) (bvslt x$1!213 #b00000000000000000000000000000000))))

(assert (=> start!668 true))

(declare-fun array_inv!72 (array!203) Bool)

(assert (=> start!668 (array_inv!72 a!327)))

(declare-fun bs!350 () Bool)

(assert (= bs!350 start!668))

(declare-fun m!7057 () Bool)

(assert (=> bs!350 m!7057))

(declare-fun m!7059 () Bool)

(assert (=> bs!350 m!7059))

(declare-fun m!7061 () Bool)

(assert (=> bs!350 m!7061))

(declare-fun m!7063 () Bool)

(assert (=> bs!350 m!7063))

(declare-fun m!7065 () Bool)

(assert (=> bs!350 m!7065))

(push 1)

(assert (not start!668))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

