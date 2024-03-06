; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14844 () Bool)

(assert start!14844)

(assert (=> start!14844 false))

(push 1)

(check-sat)

(pop 1)

