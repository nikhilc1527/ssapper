; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13828 () Bool)

(assert start!13828)

(assert (=> start!13828 false))

(push 1)

(check-sat)

(pop 1)

