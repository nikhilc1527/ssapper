; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14764 () Bool)

(assert start!14764)

(assert (=> start!14764 false))

(push 1)

(check-sat)

(pop 1)

