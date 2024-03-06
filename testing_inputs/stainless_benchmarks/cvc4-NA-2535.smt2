; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14092 () Bool)

(assert start!14092)

(assert (=> start!14092 false))

(push 1)

(check-sat)

(pop 1)

