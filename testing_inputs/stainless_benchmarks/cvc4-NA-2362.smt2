; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13716 () Bool)

(assert start!13716)

(assert (=> start!13716 false))

(push 1)

(check-sat)

(pop 1)

