; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14226 () Bool)

(assert start!14226)

(assert (=> start!14226 false))

(push 1)

(check-sat)

(pop 1)

