; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14678 () Bool)

(assert start!14678)

(assert (=> start!14678 false))

(push 1)

(check-sat)

(pop 1)

