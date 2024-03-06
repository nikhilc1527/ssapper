; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14546 () Bool)

(assert start!14546)

(assert (=> start!14546 false))

(push 1)

(check-sat)

(pop 1)

