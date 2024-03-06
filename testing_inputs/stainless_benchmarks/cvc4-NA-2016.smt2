; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12980 () Bool)

(assert start!12980)

(assert (=> start!12980 false))

(push 1)

(check-sat)

(pop 1)

