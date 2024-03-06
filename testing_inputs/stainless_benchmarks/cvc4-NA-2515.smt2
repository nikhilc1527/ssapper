; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14052 () Bool)

(assert start!14052)

(assert (=> start!14052 false))

(push 1)

(check-sat)

(pop 1)

