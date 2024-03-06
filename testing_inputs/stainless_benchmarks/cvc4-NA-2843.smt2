; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14774 () Bool)

(assert start!14774)

(assert (=> start!14774 false))

(push 1)

(check-sat)

(pop 1)

