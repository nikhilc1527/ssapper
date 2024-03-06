; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14582 () Bool)

(assert start!14582)

(assert (=> start!14582 false))

(push 1)

(check-sat)

(pop 1)

