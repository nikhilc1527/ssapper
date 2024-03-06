; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14300 () Bool)

(assert start!14300)

(assert (=> start!14300 false))

(assert (=> start!14300 true))

(push 1)

(check-sat)

(pop 1)

