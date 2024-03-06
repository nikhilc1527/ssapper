; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14614 () Bool)

(assert start!14614)

(assert (=> start!14614 false))

(push 1)

(check-sat)

(pop 1)

