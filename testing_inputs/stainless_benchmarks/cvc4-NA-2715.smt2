; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14482 () Bool)

(assert start!14482)

(assert (=> start!14482 false))

(push 1)

(check-sat)

(pop 1)

