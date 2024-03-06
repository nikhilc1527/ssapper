; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14120 () Bool)

(assert start!14120)

(assert (=> start!14120 false))

(push 1)

(check-sat)

(pop 1)

