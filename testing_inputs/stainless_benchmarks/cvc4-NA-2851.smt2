; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14790 () Bool)

(assert start!14790)

(assert (=> start!14790 false))

(push 1)

(check-sat)

(pop 1)

