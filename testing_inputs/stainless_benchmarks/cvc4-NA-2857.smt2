; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14802 () Bool)

(assert start!14802)

(assert (=> start!14802 false))

(push 1)

(check-sat)

(pop 1)

