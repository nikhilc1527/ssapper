; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9446 () Bool)

(assert start!9446)

(assert (=> start!9446 false))

(assert (=> start!9446 true))

(push 1)

(check-sat)

(pop 1)

