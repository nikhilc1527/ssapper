; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15164 () Bool)

(assert start!15164)

(assert (=> start!15164 false))

(push 1)

(check-sat)

(pop 1)

