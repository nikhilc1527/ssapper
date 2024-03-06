; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14296 () Bool)

(assert start!14296)

(assert (=> start!14296 false))

(push 1)

(check-sat)

(pop 1)

