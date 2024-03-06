; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14706 () Bool)

(assert start!14706)

(assert (=> start!14706 false))

(assert (=> start!14706 true))

(push 1)

(check-sat)

(pop 1)

