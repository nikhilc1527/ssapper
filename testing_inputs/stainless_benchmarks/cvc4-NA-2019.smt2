; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12986 () Bool)

(assert start!12986)

(assert (=> start!12986 false))

(push 1)

(check-sat)

(pop 1)

