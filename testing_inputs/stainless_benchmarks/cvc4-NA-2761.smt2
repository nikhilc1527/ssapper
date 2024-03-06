; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14574 () Bool)

(assert start!14574)

(assert (=> start!14574 false))

(push 1)

(check-sat)

(pop 1)

