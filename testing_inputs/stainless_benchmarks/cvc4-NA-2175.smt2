; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13320 () Bool)

(assert start!13320)

(assert (=> start!13320 false))

(push 1)

(check-sat)

(pop 1)

