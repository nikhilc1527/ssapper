; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14782 () Bool)

(assert start!14782)

(assert (=> start!14782 false))

(push 1)

(check-sat)

(pop 1)

