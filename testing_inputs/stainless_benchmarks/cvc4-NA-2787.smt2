; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14638 () Bool)

(assert start!14638)

(assert (=> start!14638 false))

(push 1)

(check-sat)

(pop 1)

