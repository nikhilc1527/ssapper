; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14430 () Bool)

(assert start!14430)

(assert (=> start!14430 false))

(assert (=> start!14430 true))

(push 1)

(check-sat)

(pop 1)

