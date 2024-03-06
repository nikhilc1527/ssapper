; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14698 () Bool)

(assert start!14698)

(assert (=> start!14698 false))

(push 1)

(check-sat)

(pop 1)

