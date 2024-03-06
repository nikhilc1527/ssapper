; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13740 () Bool)

(assert start!13740)

(assert (=> start!13740 false))

(push 1)

(check-sat)

(pop 1)

