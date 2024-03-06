; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14064 () Bool)

(assert start!14064)

(assert (=> start!14064 false))

(push 1)

(check-sat)

(pop 1)

