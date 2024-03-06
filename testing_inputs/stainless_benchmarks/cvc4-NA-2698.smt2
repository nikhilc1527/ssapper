; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14440 () Bool)

(assert start!14440)

(assert (=> start!14440 false))

(push 1)

(check-sat)

(pop 1)

