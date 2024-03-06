; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14736 () Bool)

(assert start!14736)

(assert (=> start!14736 false))

(assert (=> start!14736 true))

(push 1)

(check-sat)

(pop 1)

