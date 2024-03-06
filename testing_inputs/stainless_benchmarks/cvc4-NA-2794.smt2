; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14652 () Bool)

(assert start!14652)

(assert (=> start!14652 false))

(push 1)

(check-sat)

(pop 1)

