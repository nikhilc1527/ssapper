; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14126 () Bool)

(assert start!14126)

(assert (=> start!14126 false))

(push 1)

(check-sat)

(pop 1)

