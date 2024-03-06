; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13074 () Bool)

(assert start!13074)

(assert (=> start!13074 false))

(push 1)

(check-sat)

(pop 1)

