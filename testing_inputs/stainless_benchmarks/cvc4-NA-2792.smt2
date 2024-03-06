; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14648 () Bool)

(assert start!14648)

(assert (=> start!14648 false))

(push 1)

(check-sat)

(pop 1)

