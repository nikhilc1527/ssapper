; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14998 () Bool)

(assert start!14998)

(assert (=> start!14998 false))

(push 1)

(check-sat)

(pop 1)

