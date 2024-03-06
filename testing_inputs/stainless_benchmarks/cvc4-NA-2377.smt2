; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13746 () Bool)

(assert start!13746)

(assert (=> start!13746 false))

(push 1)

(check-sat)

(pop 1)

