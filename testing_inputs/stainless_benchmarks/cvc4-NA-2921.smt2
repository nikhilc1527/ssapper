; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14954 () Bool)

(assert start!14954)

(assert (=> start!14954 false))

(push 1)

(check-sat)

(pop 1)

