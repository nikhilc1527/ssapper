; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14956 () Bool)

(assert start!14956)

(assert (=> start!14956 false))

(push 1)

(check-sat)

(pop 1)

