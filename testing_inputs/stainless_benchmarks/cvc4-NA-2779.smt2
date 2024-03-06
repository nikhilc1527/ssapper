; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14622 () Bool)

(assert start!14622)

(assert (=> start!14622 false))

(push 1)

(check-sat)

(pop 1)

