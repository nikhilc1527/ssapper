; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14176 () Bool)

(assert start!14176)

(assert (=> start!14176 false))

(push 1)

(check-sat)

(pop 1)

