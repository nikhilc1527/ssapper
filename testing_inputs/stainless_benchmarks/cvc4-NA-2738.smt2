; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14528 () Bool)

(assert start!14528)

(assert (=> start!14528 false))

(push 1)

(check-sat)

(pop 1)

