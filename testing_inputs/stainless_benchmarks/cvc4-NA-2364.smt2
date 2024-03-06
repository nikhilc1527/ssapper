; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13720 () Bool)

(assert start!13720)

(assert (=> start!13720 false))

(push 1)

(check-sat)

(pop 1)

