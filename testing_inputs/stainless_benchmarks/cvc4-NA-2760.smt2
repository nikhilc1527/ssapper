; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14572 () Bool)

(assert start!14572)

(assert (=> start!14572 false))

(push 1)

(check-sat)

(pop 1)

