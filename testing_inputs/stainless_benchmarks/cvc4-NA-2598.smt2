; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14218 () Bool)

(assert start!14218)

(assert (=> start!14218 false))

(assert (=> start!14218 true))

(push 1)

(check-sat)

(pop 1)

