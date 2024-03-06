; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15036 () Bool)

(assert start!15036)

(assert (=> start!15036 false))

(push 1)

(check-sat)

(pop 1)

