; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13412 () Bool)

(assert start!13412)

(assert (=> start!13412 false))

(push 1)

(check-sat)

(pop 1)

