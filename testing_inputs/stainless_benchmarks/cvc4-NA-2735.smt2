; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14522 () Bool)

(assert start!14522)

(assert (=> start!14522 false))

(assert (=> start!14522 true))

(push 1)

(check-sat)

(pop 1)

