; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13152 () Bool)

(assert start!13152)

(assert (=> start!13152 false))

(push 1)

(check-sat)

(pop 1)

