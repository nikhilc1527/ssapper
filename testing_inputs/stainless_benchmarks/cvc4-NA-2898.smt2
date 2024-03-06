; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14896 () Bool)

(assert start!14896)

(assert (=> start!14896 false))

(push 1)

(check-sat)

(pop 1)

