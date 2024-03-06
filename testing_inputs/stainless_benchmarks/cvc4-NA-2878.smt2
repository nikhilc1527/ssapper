; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14856 () Bool)

(assert start!14856)

(assert (=> start!14856 false))

(push 1)

(check-sat)

(pop 1)

