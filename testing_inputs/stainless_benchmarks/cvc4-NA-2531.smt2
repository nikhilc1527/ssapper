; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14084 () Bool)

(assert start!14084)

(assert (=> start!14084 false))

(push 1)

(check-sat)

(pop 1)

