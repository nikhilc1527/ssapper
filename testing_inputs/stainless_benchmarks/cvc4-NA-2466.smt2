; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13946 () Bool)

(assert start!13946)

(assert (=> start!13946 false))

(assert (=> start!13946 true))

(push 1)

(check-sat)

(pop 1)

