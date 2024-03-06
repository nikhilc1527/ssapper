; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14794 () Bool)

(assert start!14794)

(assert (=> start!14794 false))

(push 1)

(check-sat)

(pop 1)

