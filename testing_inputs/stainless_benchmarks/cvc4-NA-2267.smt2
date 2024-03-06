; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13508 () Bool)

(assert start!13508)

(assert (=> start!13508 false))

(push 1)

(check-sat)

(pop 1)

