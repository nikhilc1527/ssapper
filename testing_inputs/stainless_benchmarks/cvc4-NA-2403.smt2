; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13798 () Bool)

(assert start!13798)

(assert (=> start!13798 false))

(push 1)

(check-sat)

(pop 1)

