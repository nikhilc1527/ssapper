; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14940 () Bool)

(assert start!14940)

(assert (=> start!14940 false))

(push 1)

(check-sat)

(pop 1)

