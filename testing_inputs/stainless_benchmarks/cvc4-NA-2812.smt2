; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14700 () Bool)

(assert start!14700)

(assert (=> start!14700 false))

(push 1)

(check-sat)

(pop 1)

