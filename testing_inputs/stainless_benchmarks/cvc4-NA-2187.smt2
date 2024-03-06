; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13344 () Bool)

(assert start!13344)

(assert (=> start!13344 false))

(push 1)

(check-sat)

(pop 1)

