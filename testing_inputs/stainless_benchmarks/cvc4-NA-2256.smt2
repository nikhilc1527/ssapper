; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13484 () Bool)

(assert start!13484)

(assert (=> start!13484 false))

(push 1)

(check-sat)

(pop 1)

