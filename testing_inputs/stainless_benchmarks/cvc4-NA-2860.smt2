; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14808 () Bool)

(assert start!14808)

(assert (=> start!14808 false))

(push 1)

(check-sat)

(pop 1)

