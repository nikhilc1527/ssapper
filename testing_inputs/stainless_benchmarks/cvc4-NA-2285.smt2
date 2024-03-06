; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13544 () Bool)

(assert start!13544)

(assert (=> start!13544 false))

(assert (=> start!13544 true))

(push 1)

(check-sat)

(pop 1)

