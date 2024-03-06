; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14688 () Bool)

(assert start!14688)

(assert (=> start!14688 false))

(push 1)

(check-sat)

(pop 1)

