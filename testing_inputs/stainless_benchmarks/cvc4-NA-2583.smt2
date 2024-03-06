; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14188 () Bool)

(assert start!14188)

(assert (=> start!14188 false))

(push 1)

(check-sat)

(pop 1)

