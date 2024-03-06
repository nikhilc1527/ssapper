; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14456 () Bool)

(assert start!14456)

(assert (=> start!14456 false))

(push 1)

(check-sat)

(pop 1)

