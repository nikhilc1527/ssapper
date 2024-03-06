; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11404 () Bool)

(assert start!11404)

(declare-fun x!30421 () Int)

(assert (=> start!11404 (and (= x!30421 10) (or (> 0 x!30421) (> x!30421 100)))))

(assert (=> start!11404 true))

(push 1)

(check-sat)

(pop 1)

