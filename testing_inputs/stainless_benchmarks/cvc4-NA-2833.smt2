; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14750 () Bool)

(assert start!14750)

(assert (=> start!14750 false))

(assert (=> start!14750 true))

(push 1)

(check-sat)

(pop 1)

