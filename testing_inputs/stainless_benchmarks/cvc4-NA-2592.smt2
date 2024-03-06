; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14206 () Bool)

(assert start!14206)

(assert (=> start!14206 false))

(push 1)

(check-sat)

(pop 1)

