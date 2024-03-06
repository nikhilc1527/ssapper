; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13416 () Bool)

(assert start!13416)

(assert (=> start!13416 false))

(push 1)

(check-sat)

(pop 1)

