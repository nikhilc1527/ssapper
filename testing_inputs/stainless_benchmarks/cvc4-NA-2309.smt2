; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13592 () Bool)

(assert start!13592)

(assert (=> start!13592 false))

(push 1)

(check-sat)

(pop 1)

