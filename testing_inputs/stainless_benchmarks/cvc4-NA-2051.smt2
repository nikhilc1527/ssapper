; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13052 () Bool)

(assert start!13052)

(assert (=> start!13052 false))

(push 1)

(check-sat)

(pop 1)

