; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13750 () Bool)

(assert start!13750)

(assert (=> start!13750 false))

(push 1)

(check-sat)

(pop 1)

