; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14860 () Bool)

(assert start!14860)

(assert (=> start!14860 false))

(push 1)

(check-sat)

(pop 1)

