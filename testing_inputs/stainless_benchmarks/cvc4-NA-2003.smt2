; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12954 () Bool)

(assert start!12954)

(assert (=> start!12954 false))

(push 1)

(check-sat)

(pop 1)

