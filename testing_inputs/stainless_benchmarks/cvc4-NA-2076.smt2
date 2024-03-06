; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13104 () Bool)

(assert start!13104)

(assert (=> start!13104 false))

(push 1)

(check-sat)

(pop 1)

