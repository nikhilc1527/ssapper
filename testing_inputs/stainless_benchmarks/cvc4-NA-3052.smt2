; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15258 () Bool)

(assert start!15258)

(assert (=> start!15258 false))

(push 1)

(check-sat)

(pop 1)

