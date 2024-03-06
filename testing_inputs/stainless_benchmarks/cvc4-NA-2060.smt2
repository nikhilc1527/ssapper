; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13072 () Bool)

(assert start!13072)

(assert (=> start!13072 false))

(push 1)

(check-sat)

(pop 1)

