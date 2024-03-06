; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14964 () Bool)

(assert start!14964)

(assert (=> start!14964 false))

(push 1)

(check-sat)

(pop 1)

