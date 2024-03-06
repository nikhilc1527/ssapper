; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14552 () Bool)

(assert start!14552)

(assert (=> start!14552 false))

(push 1)

(check-sat)

(pop 1)

