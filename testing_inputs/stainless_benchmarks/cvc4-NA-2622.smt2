; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14270 () Bool)

(assert start!14270)

(assert (=> start!14270 false))

(assert (=> start!14270 true))

(push 1)

(check-sat)

(pop 1)

