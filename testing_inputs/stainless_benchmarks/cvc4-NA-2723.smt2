; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14498 () Bool)

(assert start!14498)

(assert (=> start!14498 false))

(push 1)

(check-sat)

(pop 1)

