; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14398 () Bool)

(assert start!14398)

(assert (=> start!14398 false))

(push 1)

(check-sat)

(pop 1)

