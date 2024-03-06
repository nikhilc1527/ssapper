; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13336 () Bool)

(assert start!13336)

(assert (=> start!13336 false))

(push 1)

(check-sat)

(pop 1)

