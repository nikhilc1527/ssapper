; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13748 () Bool)

(assert start!13748)

(assert (=> start!13748 false))

(assert (=> start!13748 true))

(push 1)

(check-sat)

(pop 1)

