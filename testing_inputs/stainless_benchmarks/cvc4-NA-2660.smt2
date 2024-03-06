; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14346 () Bool)

(assert start!14346)

(assert (=> start!14346 false))

(push 1)

(check-sat)

(pop 1)

