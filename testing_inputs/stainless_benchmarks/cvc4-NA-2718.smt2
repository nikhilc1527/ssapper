; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14488 () Bool)

(assert start!14488)

(assert (=> start!14488 false))

(assert (=> start!14488 true))

(push 1)

(check-sat)

(pop 1)

