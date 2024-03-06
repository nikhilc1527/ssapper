; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14004 () Bool)

(assert start!14004)

(assert (=> start!14004 false))

(push 1)

(check-sat)

(pop 1)

