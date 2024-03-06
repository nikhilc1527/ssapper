; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14560 () Bool)

(assert start!14560)

(assert (=> start!14560 false))

(push 1)

(check-sat)

(pop 1)

