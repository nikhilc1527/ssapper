; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14278 () Bool)

(assert start!14278)

(assert (=> start!14278 false))

(assert (=> start!14278 true))

(push 1)

(check-sat)

(pop 1)

