; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14460 () Bool)

(assert start!14460)

(assert (=> start!14460 false))

(push 1)

(check-sat)

(pop 1)

