; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13124 () Bool)

(assert start!13124)

(assert (=> start!13124 false))

(push 1)

(check-sat)

(pop 1)

