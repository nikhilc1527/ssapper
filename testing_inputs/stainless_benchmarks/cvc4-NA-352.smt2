; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!2670 () Bool)

(assert start!2670)

(declare-fun x!7314 () Real)

(declare-fun y!684 () Real)

(declare-fun x$1!266 () Real)

(assert (=> start!2670 (and (>= x!7314 (/ 0 1)) (>= y!684 (/ 0 1)) (= x$1!266 (+ x!7314 y!684)) (< x$1!266 (/ 0 1)))))

(assert (=> start!2670 true))

(push 1)

(check-sat)

(pop 1)

