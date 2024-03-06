; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14146 () Bool)

(assert start!14146)

(assert (=> start!14146 false))

(push 1)

(check-sat)

(pop 1)

