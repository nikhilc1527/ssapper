; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15464 () Bool)

(assert start!15464)

(declare-datatypes () ((P!87 (Charlie!87) (Alice!87) (Bob!87))))

(declare-fun v!3194 () P!87)

(assert (=> start!15464 (and (= v!3194 Alice!87) (not (is-Alice!87 v!3194)))))

(assert (=> start!15464 true))

(push 1)

(check-sat)

(pop 1)

