; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13132 () Bool)

(assert start!13132)

(assert (=> start!13132 false))

(push 1)

(check-sat)

(pop 1)

