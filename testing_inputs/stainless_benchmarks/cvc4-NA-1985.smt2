; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12918 () Bool)

(assert start!12918)

(assert (=> start!12918 false))

(push 1)

(check-sat)

(pop 1)

