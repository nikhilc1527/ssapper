; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13848 () Bool)

(assert start!13848)

(assert (=> start!13848 false))

(push 1)

(check-sat)

(pop 1)

