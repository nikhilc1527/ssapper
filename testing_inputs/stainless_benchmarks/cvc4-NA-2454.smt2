; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13904 () Bool)

(assert start!13904)

(assert (=> start!13904 false))

(push 1)

(check-sat)

(pop 1)

