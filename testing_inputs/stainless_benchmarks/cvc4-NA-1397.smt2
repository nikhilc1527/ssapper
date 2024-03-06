; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9734 () Bool)

(assert start!9734)

(declare-fun x$1!948 () Int)

(assert (=> start!9734 (and (= x$1!948 0) (not (= 0 x$1!948)))))

(assert (=> start!9734 true))

(push 1)

(check-sat)

(pop 1)

