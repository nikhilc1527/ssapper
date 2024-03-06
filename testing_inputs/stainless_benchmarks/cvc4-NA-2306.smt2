; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13586 () Bool)

(assert start!13586)

(assert (=> start!13586 false))

(push 1)

(check-sat)

(pop 1)

