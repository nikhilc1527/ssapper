; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13686 () Bool)

(assert start!13686)

(assert (=> start!13686 false))

(push 1)

(check-sat)

(pop 1)

