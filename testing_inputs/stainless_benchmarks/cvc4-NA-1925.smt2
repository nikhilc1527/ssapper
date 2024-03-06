; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12786 () Bool)

(assert start!12786)

(assert (=> start!12786 false))

(push 1)

(check-sat)

(pop 1)

