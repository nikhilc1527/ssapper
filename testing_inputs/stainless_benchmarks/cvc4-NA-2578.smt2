; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14178 () Bool)

(assert start!14178)

(assert (=> start!14178 false))

(push 1)

(check-sat)

(pop 1)

