; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14232 () Bool)

(assert start!14232)

(assert (=> start!14232 false))

(push 1)

(check-sat)

(pop 1)

