; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15064 () Bool)

(assert start!15064)

(assert (=> start!15064 false))

(push 1)

(check-sat)

(pop 1)

