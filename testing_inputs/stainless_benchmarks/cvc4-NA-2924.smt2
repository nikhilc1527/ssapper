; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14960 () Bool)

(assert start!14960)

(assert (=> start!14960 false))

(push 1)

(check-sat)

(pop 1)

