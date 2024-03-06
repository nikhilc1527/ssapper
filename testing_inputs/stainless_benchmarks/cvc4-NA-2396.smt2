; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13784 () Bool)

(assert start!13784)

(assert (=> start!13784 false))

(push 1)

(check-sat)

(pop 1)

