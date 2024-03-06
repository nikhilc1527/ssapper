; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14156 () Bool)

(assert start!14156)

(assert (=> start!14156 false))

(push 1)

(check-sat)

(pop 1)

