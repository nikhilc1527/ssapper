; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12454 () Bool)

(assert start!12454)

(declare-fun x!749 () Int)

(assert (=> start!12454 (or (= x!749 (- 1)) (not (= x!749 0)))))

(assert (=> start!12454 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

