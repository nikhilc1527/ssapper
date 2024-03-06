; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14116 () Bool)

(assert start!14116)

(assert (=> start!14116 false))

(push 1)

(check-sat)

(pop 1)

