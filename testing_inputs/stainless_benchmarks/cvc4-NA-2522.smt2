; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14066 () Bool)

(assert start!14066)

(assert (=> start!14066 false))

(assert (=> start!14066 true))

(push 1)

(check-sat)

(pop 1)

