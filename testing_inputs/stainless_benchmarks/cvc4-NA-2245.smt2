; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13460 () Bool)

(assert start!13460)

(assert (=> start!13460 false))

(push 1)

(check-sat)

(pop 1)

