; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14786 () Bool)

(assert start!14786)

(assert (=> start!14786 false))

(push 1)

(check-sat)

(pop 1)

