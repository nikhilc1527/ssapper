; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13120 () Bool)

(assert start!13120)

(assert (=> start!13120 false))

(push 1)

(check-sat)

(pop 1)

