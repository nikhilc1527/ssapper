; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13570 () Bool)

(assert start!13570)

(assert (=> start!13570 false))

(push 1)

(check-sat)

(pop 1)

