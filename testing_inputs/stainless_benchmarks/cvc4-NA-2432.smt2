; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13860 () Bool)

(assert start!13860)

(assert (=> start!13860 false))

(assert (=> start!13860 true))

(push 1)

(check-sat)

(pop 1)

