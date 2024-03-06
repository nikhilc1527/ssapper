; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13282 () Bool)

(assert start!13282)

(assert (=> start!13282 false))

(push 1)

(check-sat)

(pop 1)

