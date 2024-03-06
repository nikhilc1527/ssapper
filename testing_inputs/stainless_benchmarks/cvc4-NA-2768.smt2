; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14588 () Bool)

(assert start!14588)

(assert (=> start!14588 false))

(push 1)

(check-sat)

(pop 1)

