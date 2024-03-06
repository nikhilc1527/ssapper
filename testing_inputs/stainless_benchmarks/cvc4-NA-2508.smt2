; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14038 () Bool)

(assert start!14038)

(assert (=> start!14038 false))

(push 1)

(check-sat)

(pop 1)

