; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!15440 () Bool)

(assert start!15440)

(assert (=> start!15440 false))

(push 1)

(check-sat)

(pop 1)

