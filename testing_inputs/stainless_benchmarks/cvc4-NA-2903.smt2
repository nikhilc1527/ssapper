; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14906 () Bool)

(assert start!14906)

(assert (=> start!14906 false))

(push 1)

(check-sat)

(pop 1)

