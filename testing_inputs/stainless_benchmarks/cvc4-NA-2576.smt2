; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14174 () Bool)

(assert start!14174)

(assert (=> start!14174 false))

(push 1)

(check-sat)

(pop 1)

