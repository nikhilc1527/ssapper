; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14160 () Bool)

(assert start!14160)

(assert (=> start!14160 false))

(push 1)

(check-sat)

(pop 1)

