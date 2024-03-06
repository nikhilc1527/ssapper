; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13652 () Bool)

(assert start!13652)

(assert (=> start!13652 false))

(push 1)

(check-sat)

(pop 1)

