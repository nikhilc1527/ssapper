; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15056 () Bool)

(assert start!15056)

(assert (=> start!15056 false))

(push 1)

(check-sat)

(pop 1)

