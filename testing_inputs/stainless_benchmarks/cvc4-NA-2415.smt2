; Options: -q --produce-models --incremental --print-success --lang smt2.5
(declare-fun start!13826 () Bool)

(assert start!13826)

(assert (=> start!13826 false))

(push 1)

(check-sat)

(pop 1)

