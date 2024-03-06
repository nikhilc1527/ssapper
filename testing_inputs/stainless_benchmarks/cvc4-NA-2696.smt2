; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14436 () Bool)

(assert start!14436)

(assert (=> start!14436 false))

(push 1)

(check-sat)

(pop 1)

