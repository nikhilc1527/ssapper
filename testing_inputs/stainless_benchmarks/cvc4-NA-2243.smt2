; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13456 () Bool)

(assert start!13456)

(assert (=> start!13456 false))

(push 1)

(check-sat)

(pop 1)

