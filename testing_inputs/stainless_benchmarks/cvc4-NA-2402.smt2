; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13796 () Bool)

(assert start!13796)

(assert (=> start!13796 false))

(push 1)

(check-sat)

(pop 1)

