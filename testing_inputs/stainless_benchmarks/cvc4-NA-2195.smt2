; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13360 () Bool)

(assert start!13360)

(assert (=> start!13360 false))

(push 1)

(check-sat)

(pop 1)

