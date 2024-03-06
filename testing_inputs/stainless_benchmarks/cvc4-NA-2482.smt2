; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13978 () Bool)

(assert start!13978)

(assert (=> start!13978 false))

(assert (=> start!13978 true))

(push 1)

(check-sat)

(pop 1)

