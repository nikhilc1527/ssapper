; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13254 () Bool)

(assert start!13254)

(assert (=> start!13254 false))

(push 1)

(check-sat)

(pop 1)

