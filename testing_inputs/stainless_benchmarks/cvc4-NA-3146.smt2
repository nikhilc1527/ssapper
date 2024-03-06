; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15450 () Bool)

(assert start!15450)

(assert (=> start!15450 false))

(push 1)

(check-sat)

(pop 1)

