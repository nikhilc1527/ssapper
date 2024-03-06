; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!12862 () Bool)

(assert start!12862)

(assert (=> start!12862 false))

(push 1)

(check-sat)

(pop 1)

