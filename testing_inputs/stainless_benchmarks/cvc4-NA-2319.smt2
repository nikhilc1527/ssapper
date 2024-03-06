; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13630 () Bool)

(assert start!13630)

(assert (=> start!13630 false))

(push 1)

(check-sat)

(pop 1)

