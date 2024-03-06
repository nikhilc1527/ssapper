; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12898 () Bool)

(assert start!12898)

(assert (=> start!12898 false))

(assert (=> start!12898 true))

(push 1)

(check-sat)

(pop 1)

