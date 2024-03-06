; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15468 () Bool)

(assert start!15468)

(declare-datatypes () ((P!89 (Charlie!89) (Alice!89) (Bob!89))))

(declare-fun v!3190 () P!89)

(assert (=> start!15468 (and (= v!3190 Charlie!89) (not (is-Charlie!89 v!3190)))))

(assert (=> start!15468 true))

(push 1)

(check-sat)

(pop 1)

