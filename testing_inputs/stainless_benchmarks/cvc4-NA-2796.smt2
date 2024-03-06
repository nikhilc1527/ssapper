; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14656 () Bool)

(assert start!14656)

(assert (=> start!14656 false))

(push 1)

(check-sat)

(pop 1)

