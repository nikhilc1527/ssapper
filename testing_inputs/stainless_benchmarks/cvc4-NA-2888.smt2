; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14876 () Bool)

(assert start!14876)

(assert (=> start!14876 false))

(push 1)

(check-sat)

(pop 1)

