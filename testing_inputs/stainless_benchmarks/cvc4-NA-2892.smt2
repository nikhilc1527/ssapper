; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14884 () Bool)

(assert start!14884)

(assert (=> start!14884 false))

(push 1)

(check-sat)

(pop 1)

