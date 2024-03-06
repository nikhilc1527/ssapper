; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14282 () Bool)

(assert start!14282)

(assert (=> start!14282 false))

(push 1)

(check-sat)

(pop 1)

