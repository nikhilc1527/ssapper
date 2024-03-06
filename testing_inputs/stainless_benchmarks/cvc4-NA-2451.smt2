; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13898 () Bool)

(assert start!13898)

(assert (=> start!13898 false))

(push 1)

(check-sat)

(pop 1)

