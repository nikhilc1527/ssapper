; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!9314 () Bool)

(assert start!9314)

(assert (=> start!9314 false))

(assert (=> start!9314 true))

(push 1)

(check-sat)

(pop 1)

