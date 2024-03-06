; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12912 () Bool)

(assert start!12912)

(assert (=> start!12912 false))

(push 1)

(check-sat)

(pop 1)

