; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15466 () Bool)

(assert start!15466)

(declare-datatypes () ((P!88 (Charlie!88) (Alice!88) (Bob!88))))

(declare-fun v!3193 () P!88)

(assert (=> start!15466 (and (= v!3193 Bob!88) (not (is-Bob!88 v!3193)))))

(assert (=> start!15466 true))

(push 1)

(check-sat)

(pop 1)

