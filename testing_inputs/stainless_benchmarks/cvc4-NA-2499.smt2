; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14020 () Bool)

(assert start!14020)

(assert (=> start!14020 false))

(push 1)

(check-sat)

(pop 1)

