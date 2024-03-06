; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!8760 () Bool)

(assert start!8760)

(declare-fun i!472 () Int)

(declare-fun x$3!156 () Int)

(assert (=> start!8760 (and (< i!472 0) (= x$3!156 (- i!472)) (< x$3!156 0))))

(assert (=> start!8760 true))

(push 1)

(check-sat)

(pop 1)

