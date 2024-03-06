; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13956 () Bool)

(assert start!13956)

(assert (=> start!13956 false))

(push 1)

(check-sat)

(pop 1)

