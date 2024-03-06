; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14348 () Bool)

(assert start!14348)

(assert (=> start!14348 false))

(push 1)

(check-sat)

(pop 1)

