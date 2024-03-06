; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!736 () Bool)

(assert start!736)

(assert (=> start!736 false))

(assert (=> start!736 true))

(push 1)

(check-sat)

(pop 1)

