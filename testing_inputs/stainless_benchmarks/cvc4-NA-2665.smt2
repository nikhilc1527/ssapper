; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14356 () Bool)

(assert start!14356)

(assert (=> start!14356 false))

(push 1)

(check-sat)

(pop 1)

