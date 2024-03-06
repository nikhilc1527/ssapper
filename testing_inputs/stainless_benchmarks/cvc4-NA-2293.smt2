; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13560 () Bool)

(assert start!13560)

(assert (=> start!13560 false))

(push 1)

(check-sat)

(pop 1)

