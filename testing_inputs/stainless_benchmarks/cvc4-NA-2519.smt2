; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14060 () Bool)

(assert start!14060)

(assert (=> start!14060 false))

(push 1)

(check-sat)

(pop 1)

