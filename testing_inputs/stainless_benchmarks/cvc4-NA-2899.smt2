; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14898 () Bool)

(assert start!14898)

(assert (=> start!14898 false))

(push 1)

(check-sat)

(pop 1)

