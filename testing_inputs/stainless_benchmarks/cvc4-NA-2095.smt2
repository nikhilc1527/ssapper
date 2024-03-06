; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13142 () Bool)

(assert start!13142)

(assert (=> start!13142 false))

(push 1)

(check-sat)

(pop 1)

