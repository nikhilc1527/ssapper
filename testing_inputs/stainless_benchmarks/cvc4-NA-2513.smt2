; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14048 () Bool)

(assert start!14048)

(assert (=> start!14048 false))

(push 1)

(check-sat)

(pop 1)

