; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14692 () Bool)

(assert start!14692)

(assert (=> start!14692 false))

(push 1)

(check-sat)

(pop 1)

