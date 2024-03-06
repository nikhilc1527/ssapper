; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7284 () Bool)

(assert start!7284)

(assert (=> start!7284 false))

(push 1)

(check-sat)

(pop 1)

