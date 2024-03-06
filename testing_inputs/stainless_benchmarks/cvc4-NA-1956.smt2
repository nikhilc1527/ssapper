; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12860 () Bool)

(assert start!12860)

(assert (=> start!12860 false))

(push 1)

(check-sat)

(pop 1)

