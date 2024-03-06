; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14690 () Bool)

(assert start!14690)

(assert (=> start!14690 false))

(push 1)

(check-sat)

(pop 1)

