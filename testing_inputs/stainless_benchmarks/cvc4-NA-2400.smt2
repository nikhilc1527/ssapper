; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13792 () Bool)

(assert start!13792)

(assert (=> start!13792 false))

(push 1)

(check-sat)

(pop 1)

