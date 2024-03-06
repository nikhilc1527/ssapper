; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14800 () Bool)

(assert start!14800)

(assert (=> start!14800 false))

(push 1)

(check-sat)

(pop 1)

