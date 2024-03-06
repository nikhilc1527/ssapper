; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14036 () Bool)

(assert start!14036)

(assert (=> start!14036 false))

(push 1)

(check-sat)

(pop 1)

