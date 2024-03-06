; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14006 () Bool)

(assert start!14006)

(assert (=> start!14006 false))

(push 1)

(check-sat)

(pop 1)

