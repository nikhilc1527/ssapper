; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13524 () Bool)

(assert start!13524)

(assert (=> start!13524 false))

(assert (=> start!13524 true))

(push 1)

(check-sat)

(pop 1)

