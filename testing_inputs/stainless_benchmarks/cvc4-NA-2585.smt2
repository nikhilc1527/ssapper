; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14192 () Bool)

(assert start!14192)

(assert (=> start!14192 false))

(push 1)

(check-sat)

(pop 1)

