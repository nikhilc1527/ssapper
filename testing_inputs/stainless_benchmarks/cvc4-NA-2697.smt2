; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14438 () Bool)

(assert start!14438)

(assert (=> start!14438 false))

(push 1)

(check-sat)

(pop 1)

