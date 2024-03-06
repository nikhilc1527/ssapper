; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13632 () Bool)

(assert start!13632)

(assert (=> start!13632 false))

(push 1)

(check-sat)

(pop 1)

