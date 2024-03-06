; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13022 () Bool)

(assert start!13022)

(assert (=> start!13022 false))

(push 1)

(check-sat)

(pop 1)

