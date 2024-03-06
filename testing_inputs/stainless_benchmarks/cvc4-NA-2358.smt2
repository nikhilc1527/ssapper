; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13708 () Bool)

(assert start!13708)

(assert (=> start!13708 false))

(push 1)

(check-sat)

(pop 1)

