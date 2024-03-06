; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14850 () Bool)

(assert start!14850)

(assert (=> start!14850 false))

(push 1)

(check-sat)

(pop 1)

