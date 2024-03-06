; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14534 () Bool)

(assert start!14534)

(assert (=> start!14534 false))

(push 1)

(check-sat)

(pop 1)

