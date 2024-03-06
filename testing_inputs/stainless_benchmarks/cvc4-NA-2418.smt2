; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13832 () Bool)

(assert start!13832)

(assert (=> start!13832 false))

(push 1)

(check-sat)

(pop 1)

