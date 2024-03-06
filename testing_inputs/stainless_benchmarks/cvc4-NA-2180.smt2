; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13330 () Bool)

(assert start!13330)

(assert (=> start!13330 false))

(assert (=> start!13330 true))

(push 1)

(check-sat)

(pop 1)

