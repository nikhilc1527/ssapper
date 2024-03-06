; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14830 () Bool)

(assert start!14830)

(assert (=> start!14830 false))

(push 1)

(check-sat)

(pop 1)

