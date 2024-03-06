; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15034 () Bool)

(assert start!15034)

(assert (=> start!15034 false))

(push 1)

(check-sat)

(pop 1)

