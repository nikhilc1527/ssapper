; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14832 () Bool)

(assert start!14832)

(assert (=> start!14832 false))

(push 1)

(check-sat)

(pop 1)

