; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13758 () Bool)

(assert start!13758)

(assert (=> start!13758 false))

(push 1)

(check-sat)

(pop 1)

