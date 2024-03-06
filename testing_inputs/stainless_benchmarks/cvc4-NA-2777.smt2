; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!14618 () Bool)

(assert start!14618)

(assert (=> start!14618 false))

(push 1)

(check-sat)

(pop 1)

