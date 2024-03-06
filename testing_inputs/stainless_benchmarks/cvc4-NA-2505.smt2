; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14032 () Bool)

(assert start!14032)

(assert (=> start!14032 false))

(push 1)

(check-sat)

(pop 1)

