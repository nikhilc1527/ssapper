; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14902 () Bool)

(assert start!14902)

(assert (=> start!14902 false))

(push 1)

(check-sat)

(pop 1)

