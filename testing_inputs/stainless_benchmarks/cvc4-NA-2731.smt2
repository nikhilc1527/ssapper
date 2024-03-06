; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14514 () Bool)

(assert start!14514)

(assert (=> start!14514 false))

(push 1)

(check-sat)

(pop 1)

