; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!768 () Bool)

(assert start!768)

(assert (=> start!768 false))

(assert (=> start!768 true))

(push 1)

(check-sat)

(pop 1)

