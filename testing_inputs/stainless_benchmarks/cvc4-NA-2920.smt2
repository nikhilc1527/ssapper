; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14952 () Bool)

(assert start!14952)

(assert (=> start!14952 false))

(push 1)

(check-sat)

(pop 1)

