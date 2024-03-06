; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12818 () Bool)

(assert start!12818)

(assert (=> start!12818 false))

(push 1)

(check-sat)

(pop 1)

