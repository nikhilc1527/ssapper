; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14418 () Bool)

(assert start!14418)

(assert (=> start!14418 false))

(push 1)

(check-sat)

(pop 1)

