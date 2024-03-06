; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13190 () Bool)

(assert start!13190)

(assert (=> start!13190 false))

(push 1)

(check-sat)

(pop 1)

