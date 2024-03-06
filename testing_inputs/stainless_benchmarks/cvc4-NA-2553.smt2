; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14128 () Bool)

(assert start!14128)

(assert (=> start!14128 false))

(push 1)

(check-sat)

(pop 1)

