; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13322 () Bool)

(assert start!13322)

(assert (=> start!13322 false))

(push 1)

(check-sat)

(pop 1)

