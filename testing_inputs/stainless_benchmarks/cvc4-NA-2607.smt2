; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14236 () Bool)

(assert start!14236)

(assert (=> start!14236 false))

(push 1)

(check-sat)

(pop 1)

