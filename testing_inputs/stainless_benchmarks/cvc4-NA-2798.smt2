; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14660 () Bool)

(assert start!14660)

(assert (=> start!14660 false))

(push 1)

(check-sat)

(pop 1)

