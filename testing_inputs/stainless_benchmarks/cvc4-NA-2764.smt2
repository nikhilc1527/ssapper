; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14580 () Bool)

(assert start!14580)

(assert (=> start!14580 false))

(push 1)

(check-sat)

(pop 1)

