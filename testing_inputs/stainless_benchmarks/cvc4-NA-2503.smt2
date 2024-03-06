; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14028 () Bool)

(assert start!14028)

(assert (=> start!14028 false))

(push 1)

(check-sat)

(pop 1)

