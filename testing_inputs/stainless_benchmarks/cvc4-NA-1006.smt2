; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7472 () Bool)

(assert start!7472)

(assert (=> start!7472 false))

(assert (=> start!7472 true))

(push 1)

(check-sat)

(pop 1)

