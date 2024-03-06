; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14936 () Bool)

(assert start!14936)

(assert (=> start!14936 false))

(push 1)

(check-sat)

(pop 1)

