; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14490 () Bool)

(assert start!14490)

(assert (=> start!14490 false))

(push 1)

(check-sat)

(pop 1)

