; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14222 () Bool)

(assert start!14222)

(assert (=> start!14222 false))

(push 1)

(check-sat)

(pop 1)

