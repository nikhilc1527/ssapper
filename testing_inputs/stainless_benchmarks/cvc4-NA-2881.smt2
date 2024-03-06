; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14862 () Bool)

(assert start!14862)

(assert (=> start!14862 false))

(push 1)

(check-sat)

(pop 1)

