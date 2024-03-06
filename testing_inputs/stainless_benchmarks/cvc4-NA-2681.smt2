; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14406 () Bool)

(assert start!14406)

(assert (=> start!14406 false))

(push 1)

(check-sat)

(pop 1)

