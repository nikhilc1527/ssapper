; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14848 () Bool)

(assert start!14848)

(assert (=> start!14848 false))

(push 1)

(check-sat)

(pop 1)

