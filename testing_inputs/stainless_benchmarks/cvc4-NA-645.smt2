; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4640 () Bool)

(assert start!4640)

(declare-datatypes () ((List!404 (Nil!395) (Cons!394 (head!609 (_ BitVec 32)) (tail!633 List!404)))))

(declare-fun list!219 () List!404)

(declare-fun count!10 () (_ BitVec 32))

(declare-fun count!11 () (_ BitVec 32))

(declare-fun list!220 () List!404)

(assert (=> start!4640 (and (bvsge count!10 #b00000000000000000000000000000000) (is-Cons!394 list!219) (bvsgt count!10 #b00000000000000000000000000000000) (= list!220 (tail!633 list!219)) (= count!11 (bvsub count!10 #b00000000000000000000000000000001)) (bvslt count!11 #b00000000000000000000000000000000))))

(assert (=> start!4640 true))

(push 1)

(check-sat)

(pop 1)

