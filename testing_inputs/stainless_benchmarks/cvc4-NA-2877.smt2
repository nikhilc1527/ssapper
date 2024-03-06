; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14854 () Bool)

(assert start!14854)

(assert (=> start!14854 false))

(push 1)

(check-sat)

(pop 1)

