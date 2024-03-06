; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12750 () Bool)

(assert start!12750)

(assert (=> start!12750 false))

(push 1)

(check-sat)

(pop 1)

