; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13370 () Bool)

(assert start!13370)

(assert (=> start!13370 false))

(push 1)

(check-sat)

(pop 1)

