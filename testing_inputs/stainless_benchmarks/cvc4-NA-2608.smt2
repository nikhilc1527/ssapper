; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14238 () Bool)

(assert start!14238)

(assert (=> start!14238 false))

(push 1)

(check-sat)

(pop 1)

