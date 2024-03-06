; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12762 () Bool)

(assert start!12762)

(assert (=> start!12762 false))

(push 1)

(check-sat)

(pop 1)

