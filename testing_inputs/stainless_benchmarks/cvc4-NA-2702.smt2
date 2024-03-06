; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14448 () Bool)

(assert start!14448)

(assert (=> start!14448 false))

(push 1)

(check-sat)

(pop 1)

