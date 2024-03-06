; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!7306 () Bool)

(assert start!7306)

(assert (=> start!7306 false))

(push 1)

(check-sat)

(pop 1)

