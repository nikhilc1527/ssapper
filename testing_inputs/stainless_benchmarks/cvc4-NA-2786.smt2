; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14636 () Bool)

(assert start!14636)

(assert (=> start!14636 false))

(push 1)

(check-sat)

(pop 1)

