; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13448 () Bool)

(assert start!13448)

(assert (=> start!13448 false))

(push 1)

(check-sat)

(pop 1)

