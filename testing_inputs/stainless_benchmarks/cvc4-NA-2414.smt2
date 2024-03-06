; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13824 () Bool)

(assert start!13824)

(assert (=> start!13824 false))

(push 1)

(check-sat)

(pop 1)

