; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14654 () Bool)

(assert start!14654)

(assert (=> start!14654 false))

(push 1)

(check-sat)

(pop 1)

