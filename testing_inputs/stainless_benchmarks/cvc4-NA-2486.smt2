; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13986 () Bool)

(assert start!13986)

(assert (=> start!13986 false))

(push 1)

(check-sat)

(pop 1)

