; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14492 () Bool)

(assert start!14492)

(assert (=> start!14492 false))

(push 1)

(check-sat)

(pop 1)

