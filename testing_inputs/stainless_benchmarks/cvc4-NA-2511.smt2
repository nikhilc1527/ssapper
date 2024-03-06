; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14044 () Bool)

(assert start!14044)

(assert (=> start!14044 false))

(push 1)

(check-sat)

(pop 1)

