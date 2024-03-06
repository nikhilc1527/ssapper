; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14182 () Bool)

(assert start!14182)

(assert (=> start!14182 false))

(push 1)

(check-sat)

(pop 1)

