; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14168 () Bool)

(assert start!14168)

(assert (=> start!14168 false))

(push 1)

(check-sat)

(pop 1)

