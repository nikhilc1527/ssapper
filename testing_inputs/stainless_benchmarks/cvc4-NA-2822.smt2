; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14720 () Bool)

(assert start!14720)

(assert (=> start!14720 false))

(assert (=> start!14720 true))

(push 1)

(check-sat)

(pop 1)

