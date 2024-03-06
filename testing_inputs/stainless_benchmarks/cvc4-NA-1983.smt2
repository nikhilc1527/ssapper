; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12914 () Bool)

(assert start!12914)

(assert (=> start!12914 false))

(push 1)

(check-sat)

(pop 1)

