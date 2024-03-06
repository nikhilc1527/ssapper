; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14650 () Bool)

(assert start!14650)

(assert (=> start!14650 false))

(push 1)

(check-sat)

(pop 1)

