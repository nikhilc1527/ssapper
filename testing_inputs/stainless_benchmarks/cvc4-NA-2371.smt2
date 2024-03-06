; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13734 () Bool)

(assert start!13734)

(assert (=> start!13734 false))

(push 1)

(check-sat)

(pop 1)

