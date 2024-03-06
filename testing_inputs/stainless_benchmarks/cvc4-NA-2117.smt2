; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13204 () Bool)

(assert start!13204)

(assert (=> start!13204 false))

(push 1)

(check-sat)

(pop 1)

