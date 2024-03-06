; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14708 () Bool)

(assert start!14708)

(assert (=> start!14708 false))

(assert (=> start!14708 true))

(push 1)

(check-sat)

(pop 1)

