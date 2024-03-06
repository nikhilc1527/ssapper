; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14432 () Bool)

(assert start!14432)

(assert (=> start!14432 false))

(push 1)

(check-sat)

(pop 1)

