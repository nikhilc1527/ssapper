; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!11406 () Bool)

(assert start!11406)

(declare-fun x!30421 () Int)

(declare-fun y!2129 () Int)

(assert (=> start!11406 (and (= x!30421 10) (<= 0 x!30421) (<= x!30421 100) (= y!2129 (+ x!30421 2)) (< (* y!2129 y!2129) (+ x!30421 40)))))

(assert (=> start!11406 true))

(push 1)

(check-sat)

(pop 1)

