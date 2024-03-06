; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14942 () Bool)

(assert start!14942)

(assert (=> start!14942 false))

(push 1)

(check-sat)

(pop 1)

