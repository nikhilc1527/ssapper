; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13974 () Bool)

(assert start!13974)

(assert (=> start!13974 false))

(push 1)

(check-sat)

(pop 1)

