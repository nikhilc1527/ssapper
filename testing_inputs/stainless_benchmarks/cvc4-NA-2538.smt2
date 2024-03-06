; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14098 () Bool)

(assert start!14098)

(assert (=> start!14098 false))

(push 1)

(check-sat)

(pop 1)

