; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14152 () Bool)

(assert start!14152)

(assert (=> start!14152 false))

(push 1)

(check-sat)

(pop 1)

