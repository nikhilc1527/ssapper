; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14212 () Bool)

(assert start!14212)

(assert (=> start!14212 false))

(push 1)

(check-sat)

(pop 1)

