; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14882 () Bool)

(assert start!14882)

(assert (=> start!14882 false))

(push 1)

(check-sat)

(pop 1)

