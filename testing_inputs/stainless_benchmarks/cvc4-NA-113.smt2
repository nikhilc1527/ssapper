; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!674 () Bool)

(assert start!674)

(declare-datatypes () ((array!221 (array!222 (arr!84 (Array (_ BitVec 32) (_ BitVec 32))) (size!111 (_ BitVec 32))))))

(declare-fun b!4529 () array!221)

(declare-fun a!331 () array!221)

(declare-fun x$1!215 () (_ BitVec 32))

(assert (=> start!674 (and (= b!4529 (array!222 (store (store (store ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000001 #b00000000000000000000000000000010) #b00000000000000000000000000000010 #b00000000000000000000000000000011) #b00000000000000000000000000000011)) (= a!331 (array!222 (store (store (store ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000001 #b00000000000000000000000000000010) #b00000000000000000000000000000010 #b00000000000000000000000000000011) #b00000000000000000000000000000011)) (= x$1!215 (size!111 a!331)) (bvsle x$1!215 #b00000000000000000000000000000000))))

(declare-fun array_inv!79 (array!221) Bool)

(assert (=> start!674 (array_inv!79 b!4529)))

(assert (=> start!674 (array_inv!79 a!331)))

(assert (=> start!674 true))

(declare-fun bs!356 () Bool)

(assert (= bs!356 start!674))

(declare-fun m!7085 () Bool)

(assert (=> bs!356 m!7085))

(declare-fun m!7087 () Bool)

(assert (=> bs!356 m!7087))

(push 1)

(assert (not start!674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

