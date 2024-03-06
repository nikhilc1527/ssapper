; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14446 () Bool)

(assert start!14446)

(assert (=> start!14446 false))

(push 1)

(check-sat)

(pop 1)

