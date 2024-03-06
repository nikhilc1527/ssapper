; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14544 () Bool)

(assert start!14544)

(assert (=> start!14544 false))

(push 1)

(check-sat)

(pop 1)

