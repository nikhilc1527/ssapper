; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14180 () Bool)

(assert start!14180)

(assert (=> start!14180 false))

(push 1)

(check-sat)

(pop 1)

