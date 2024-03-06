; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13218 () Bool)

(assert start!13218)

(assert (=> start!13218 false))

(push 1)

(check-sat)

(pop 1)

