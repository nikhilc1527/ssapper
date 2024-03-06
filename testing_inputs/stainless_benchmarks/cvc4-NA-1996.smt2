; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12940 () Bool)

(assert start!12940)

(assert (=> start!12940 false))

(push 1)

(check-sat)

(pop 1)

