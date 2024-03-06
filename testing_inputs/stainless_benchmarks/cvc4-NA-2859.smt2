; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14806 () Bool)

(assert start!14806)

(assert (=> start!14806 false))

(push 1)

(check-sat)

(pop 1)

