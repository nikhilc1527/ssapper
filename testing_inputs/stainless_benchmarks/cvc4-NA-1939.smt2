; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12826 () Bool)

(assert start!12826)

(assert (=> start!12826 false))

(push 1)

(check-sat)

(pop 1)

