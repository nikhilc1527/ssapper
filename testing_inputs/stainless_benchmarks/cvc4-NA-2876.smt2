; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14852 () Bool)

(assert start!14852)

(assert (=> start!14852 false))

(push 1)

(check-sat)

(pop 1)

