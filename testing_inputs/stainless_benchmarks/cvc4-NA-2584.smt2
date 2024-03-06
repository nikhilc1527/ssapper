; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14190 () Bool)

(assert start!14190)

(assert (=> start!14190 false))

(push 1)

(check-sat)

(pop 1)

