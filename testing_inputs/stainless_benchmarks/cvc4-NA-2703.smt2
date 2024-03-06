; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14450 () Bool)

(assert start!14450)

(assert (=> start!14450 false))

(push 1)

(check-sat)

(pop 1)

