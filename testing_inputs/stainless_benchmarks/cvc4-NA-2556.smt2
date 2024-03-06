; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14134 () Bool)

(assert start!14134)

(assert (=> start!14134 false))

(push 1)

(check-sat)

(pop 1)

