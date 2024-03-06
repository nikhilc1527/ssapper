; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!4642 () Bool)

(assert start!4642)

(declare-datatypes () ((List!405 (Nil!396) (Cons!395 (head!610 (_ BitVec 32)) (tail!634 List!405)))))

(declare-fun list!232 () List!405)

(declare-fun count!17 () (_ BitVec 32))

(declare-fun count!18 () (_ BitVec 32))

(declare-fun head!588 () (_ BitVec 32))

(declare-fun list!231 () List!405)

(assert (=> start!4642 (and (bvsge count!17 #b00000000000000000000000000000000) (is-Cons!395 list!231) (bvsgt count!17 #b00000000000000000000000000000000) (= head!588 (head!610 list!231)) (= list!232 (tail!634 list!231)) (= count!18 (bvsub count!17 #b00000000000000000000000000000001)) (bvslt count!18 #b00000000000000000000000000000000))))

(assert (=> start!4642 true))

(push 1)

(check-sat)

(pop 1)

