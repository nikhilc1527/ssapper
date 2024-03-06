; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14362 () Bool)

(assert start!14362)

(assert (=> start!14362 false))

(push 1)

(check-sat)

(pop 1)

