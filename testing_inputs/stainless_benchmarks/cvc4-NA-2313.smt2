; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13618 () Bool)

(assert start!13618)

(assert (=> start!13618 false))

(assert (=> start!13618 true))

(push 1)

(check-sat)

(pop 1)

