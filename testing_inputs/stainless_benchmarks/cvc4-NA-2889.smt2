; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14878 () Bool)

(assert start!14878)

(assert (=> start!14878 false))

(push 1)

(check-sat)

(pop 1)

