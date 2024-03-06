; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13158 () Bool)

(assert start!13158)

(assert (=> start!13158 false))

(push 1)

(check-sat)

(pop 1)

