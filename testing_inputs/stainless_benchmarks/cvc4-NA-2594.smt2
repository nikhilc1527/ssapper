; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14210 () Bool)

(assert start!14210)

(assert (=> start!14210 false))

(assert (=> start!14210 true))

(push 1)

(check-sat)

(pop 1)

