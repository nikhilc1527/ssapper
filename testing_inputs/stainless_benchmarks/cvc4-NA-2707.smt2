; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14458 () Bool)

(assert start!14458)

(assert (=> start!14458 false))

(push 1)

(check-sat)

(pop 1)

