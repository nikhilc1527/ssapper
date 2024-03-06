; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14508 () Bool)

(assert start!14508)

(assert (=> start!14508 false))

(push 1)

(check-sat)

(pop 1)

