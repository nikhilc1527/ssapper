; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13528 () Bool)

(assert start!13528)

(assert (=> start!13528 false))

(push 1)

(check-sat)

(pop 1)

