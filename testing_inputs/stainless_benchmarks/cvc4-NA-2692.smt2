; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14428 () Bool)

(assert start!14428)

(assert (=> start!14428 false))

(push 1)

(check-sat)

(pop 1)

