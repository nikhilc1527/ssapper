; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14420 () Bool)

(assert start!14420)

(assert (=> start!14420 false))

(assert (=> start!14420 true))

(push 1)

(check-sat)

(pop 1)

