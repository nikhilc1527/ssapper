; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15590 () Bool)

(assert start!15590)

(declare-fun x!35266 () Real)

(assert (=> start!15590 (and (> x!35266 (/ 1 1)) (< x!35266 (/ 3 1)) (not (= x!35266 (/ 2 1))))))

(assert (=> start!15590 true))

(push 1)

(check-sat)

(get-model)

(pop 1)

