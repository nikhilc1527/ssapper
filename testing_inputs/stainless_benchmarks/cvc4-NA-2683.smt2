; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14410 () Bool)

(assert start!14410)

(assert (=> start!14410 false))

(push 1)

(check-sat)

(pop 1)

