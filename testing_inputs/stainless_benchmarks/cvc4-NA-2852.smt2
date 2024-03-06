; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14792 () Bool)

(assert start!14792)

(assert (=> start!14792 false))

(push 1)

(check-sat)

(pop 1)

