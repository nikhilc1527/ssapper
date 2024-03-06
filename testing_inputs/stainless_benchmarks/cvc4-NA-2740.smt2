; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14532 () Bool)

(assert start!14532)

(assert (=> start!14532 false))

(assert (=> start!14532 true))

(push 1)

(check-sat)

(pop 1)

