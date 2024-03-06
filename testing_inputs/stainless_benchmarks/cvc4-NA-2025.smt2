; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12998 () Bool)

(assert start!12998)

(assert (=> start!12998 false))

(push 1)

(check-sat)

(pop 1)

