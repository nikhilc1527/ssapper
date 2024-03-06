; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14762 () Bool)

(assert start!14762)

(assert (=> start!14762 false))

(push 1)

(check-sat)

(pop 1)

