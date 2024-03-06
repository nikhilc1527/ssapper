; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14558 () Bool)

(assert start!14558)

(assert (=> start!14558 false))

(push 1)

(check-sat)

(pop 1)

