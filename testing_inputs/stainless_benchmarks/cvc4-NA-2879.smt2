; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14858 () Bool)

(assert start!14858)

(assert (=> start!14858 false))

(push 1)

(check-sat)

(pop 1)

