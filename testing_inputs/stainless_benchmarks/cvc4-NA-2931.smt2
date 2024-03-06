; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14974 () Bool)

(assert start!14974)

(assert (=> start!14974 false))

(push 1)

(check-sat)

(pop 1)

