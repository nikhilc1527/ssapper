; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13144 () Bool)

(assert start!13144)

(assert (=> start!13144 false))

(push 1)

(check-sat)

(pop 1)

